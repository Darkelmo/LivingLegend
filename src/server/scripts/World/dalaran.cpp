#include "ScriptPCH.h"

enum Spells
{
    SPELL_TRESPASSER_A = 54028,
    SPELL_TRESPASSER_H = 54029,

    SPELL_SUNREAVER_DISGUISE_FEMALE        = 70973,
    SPELL_SUNREAVER_DISGUISE_MALE          = 70974,
    SPELL_SILVER_COVENANT_DISGUISE_FEMALE  = 70971,
    SPELL_SILVER_COVENANT_DISGUISE_MALE    = 70972,
};

enum NPCs // All outdoor guards are within 35.0f of these NPCs
{
    NPC_APPLEBOUGH_A = 29547,
    NPC_SWEETBERRY_H = 29715,
};

class npc_mageguard_dalaran : public CreatureScript
{
public:
    npc_mageguard_dalaran() : CreatureScript("npc_mageguard_dalaran") { }

    struct npc_mageguard_dalaranAI : public Scripted_NoMovementAI
    {
        npc_mageguard_dalaranAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            creature->ApplySpellImmune(0, IMMUNITY_DAMAGE, SPELL_SCHOOL_NORMAL, true);
            creature->ApplySpellImmune(0, IMMUNITY_DAMAGE, SPELL_SCHOOL_MASK_MAGIC, true);
        }

        void Reset(){}

        void EnterCombat(Unit* /*who*/){}

        void AttackStart(Unit* /*who*/){}

        void MoveInLineOfSight(Unit* who)
        {
            if (!who || !who->IsInWorld() || who->GetZoneId() != 4395)
                return;

            if (!me->IsWithinDist(who, 65.0f, false))
                return;

            Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();

            if (!player || player->isGameMaster() || player->IsBeingTeleported() ||
                // If player has Disguise aura for quest A Meeting With The Magister or An Audience With The Arcanist, do not teleport it away but let it pass
                player->HasAura(SPELL_SUNREAVER_DISGUISE_FEMALE) || player->HasAura(SPELL_SUNREAVER_DISGUISE_MALE) ||
                player->HasAura(SPELL_SILVER_COVENANT_DISGUISE_FEMALE) || player->HasAura(SPELL_SILVER_COVENANT_DISGUISE_MALE))
                return;

            switch (me->GetEntry())
            {
                case 29254:
                    if (player->GetTeam() == HORDE)              // Horde unit found in Alliance area
                    {
                        if (GetClosestCreatureWithEntry(me, NPC_APPLEBOUGH_A, 32.0f))
                        {
                            if (me->isInBackInMap(who, 12.0f))   // In my line of sight, "outdoors", and behind me
                                DoCast(who, SPELL_TRESPASSER_A); // Teleport the Horde unit out
                        }
                        else                                      // In my line of sight, and "indoors"
                            DoCast(who, SPELL_TRESPASSER_A);     // Teleport the Horde unit out
                    }
                    break;
                case 29255:
                    if (player->GetTeam() == ALLIANCE)           // Alliance unit found in Horde area
                    {
                        if (GetClosestCreatureWithEntry(me, NPC_SWEETBERRY_H, 32.0f))
                        {
                            if (me->isInBackInMap(who, 12.0f))   // In my line of sight, "outdoors", and behind me
                                DoCast(who, SPELL_TRESPASSER_H); // Teleport the Alliance unit out
                        }
                        else                                      // In my line of sight, and "indoors"
                            DoCast(who, SPELL_TRESPASSER_H);     // Teleport the Alliance unit out
                    }
                    break;
            }
            me->SetOrientation(me->GetHomePosition().GetOrientation());
            return;
        }

        void UpdateAI(const uint32 /*diff*/){}
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_mageguard_dalaranAI(creature);
    }
};

void AddSC_dalaran()
{
    new npc_mageguard_dalaran;
}
