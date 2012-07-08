#include "ScriptPCH.h"

class npc_reforging : public CreatureScript
{
public:
    npc_reforging() : CreatureScript("npc_reforging")
    {
    }

    bool isEquiped(Player* player, uint8 slot, uint8 &count)
    {
        Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);
        if (!item)
            return false;
        if ((slot == EQUIPMENT_SLOT_RANGED || slot == EQUIPMENT_SLOT_OFFHAND || slot == EQUIPMENT_SLOT_MAINHAND) && !requiredItem(slot, item))
            return false;

        ++count;

        return true;
    }

    bool requiredItem(uint8 slot, Item* item)
    {
        ItemTemplate const* pProto = item->GetTemplate();

        if (slot == EQUIPMENT_SLOT_RANGED)
            if (pProto->Class == 2 && (pProto->SubClass == 2 || pProto->SubClass == 3 || pProto->SubClass == 18 || pProto->SubClass == 19))
                return true;
        if (slot == EQUIPMENT_SLOT_OFFHAND)
            if ((pProto->Class == 2 && (pProto->SubClass == 0 || pProto->SubClass == 4 || pProto->SubClass == 7 || pProto->SubClass == 13 || pProto->SubClass == 15)) || (pProto->Class == 4 && pProto->SubClass == 6))
                return true;
        if (slot == EQUIPMENT_SLOT_MAINHAND)
            if (pProto->Class == 2 && (pProto->SubClass == 0 || pProto->SubClass == 1 || pProto->SubClass == 4 || pProto->SubClass == 5 || pProto->SubClass == 6 || pProto->SubClass == 7 || pProto->SubClass == 8 || pProto->SubClass == 10 || pProto->SubClass == 13 || pProto->SubClass == 15))
                return true;

        return false;
    }

    uint32 getCost(uint8 slot)
    {
        if (slot == EQUIPMENT_SLOT_RANGED || slot == EQUIPMENT_SLOT_OFFHAND || slot == EQUIPMENT_SLOT_MAINHAND)
            return 20000000;
        if (slot == EQUIPMENT_SLOT_WRISTS || slot == EQUIPMENT_SLOT_WAIST)
            return 5000000;

        return 10000000;
    }

    void reforge(Player* player, Creature* creature, uint8 slot, const char* code)
    {
        player->CLOSE_GOSSIP_MENU();

        if (!player->HasEnoughMoney(getCost(slot)))
            return;

        Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);

        if (!item || ((slot == EQUIPMENT_SLOT_RANGED || slot == EQUIPMENT_SLOT_OFFHAND || slot == EQUIPMENT_SLOT_MAINHAND) && !requiredItem(slot, item)))
        {
            ChatHandler(player).PSendSysMessage("|cfff4b25eМастер перековки шепчет:|r |cfffcedbbМы ведь договаривались на другой предмет!? Если передумал, то давай с начала.|r");
            return;
        }

        uint32 entry = 0;
        if (code)
            sscanf(code, "%i", &entry);

        ItemTemplate const* mItem = item->GetTemplate();
        ItemTemplate const* wItem = sObjectMgr->GetItemTemplate(entry);
        if (!mItem || !wItem)
        {
            ChatHandler(player).PSendSysMessage("|cfff4b25eМастер перековки шепчет:|r |cfffcedbbЯ не нашёл предмета с таким номером. Попробуйте ещё раз.|r");
            return;
        }

        if (mItem->Class == wItem->Class && mItem->SubClass == wItem->SubClass)
        {
            item->SetItemDisplayId(entry);
            player->SetVisibleItemSlot(slot, item);
            player->ModifyMoney(-int32(getCost(slot)));
            player->CastSpell(player, 44688, true);
        }
        else
        {
            ChatHandler(player).PSendSysMessage("|cfff4b25eМастер перековки шепчет:|r |cfffcedbbПрочтите информацию о перековке ещё раз. Видимо вы что-то не так поняли.|r");
            return;
        }
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        uint8 count = 0;

        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Информация о перековке", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+14);

        if (isEquiped(player, EQUIPMENT_SLOT_HEAD, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Голова", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2, "Стоимость перековки:", 10000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_SHOULDERS, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Плечо", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+3, "Стоимость перековки:", 10000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_BACK, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Спина", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+4, "Стоимость перековки:", 10000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_CHEST, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Грудь", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+5, "Стоимость перековки:", 10000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_WRISTS, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Запястья", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+6, "Стоимость перековки:", 5000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_HANDS, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Кисти рук", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+7, "Стоимость перековки:", 10000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_WAIST, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Пояс", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+8, "Стоимость перековки:", 5000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_LEGS, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Ноги", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+9, "Стоимость перековки:", 10000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_FEET, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Ступни", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+10, "Стоимость перековки:", 10000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_MAINHAND, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Правая рука", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+11, "Стоимость перековки:", 20000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_OFFHAND, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Левая рука", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+12, "Стоимость перековки:", 20000000, true);
        if (isEquiped(player, EQUIPMENT_SLOT_RANGED, count))
            player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Левая рука", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+13, "Стоимость перековки:", 20000000, true);

        if (count > 0)
            player->SEND_GOSSIP_MENU(55000, creature->GetGUID());
        else
            ChatHandler(player).PSendSysMessage("|cfff4b25eМастер перековки шепчет:|r |cfffcedbbИз всех одетых на вас предметов я ни один не смогу перековать. Приходите позже, когда раздобудете других вещей.|r");

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();

        if (sender != GOSSIP_SENDER_MAIN)
            return false;

        switch (action)
        {
            case GOSSIP_ACTION_INFO_DEF+14:
                player->SEND_GOSSIP_MENU(55002, creature->GetGUID());
                break;
        }

        return true;
    }

    bool OnGossipSelectCode(Player* player, Creature* creature, uint32 sender, uint32 action, const char* code)
    {
        player->PlayerTalkClass->ClearMenus();

        if (sender != GOSSIP_SENDER_MAIN)
            return false;

        switch (action)
        {
            case GOSSIP_ACTION_INFO_DEF+2:
                reforge(player, creature, EQUIPMENT_SLOT_HEAD, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+3:
                reforge(player, creature, EQUIPMENT_SLOT_SHOULDERS, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+4:
                reforge(player, creature, EQUIPMENT_SLOT_BACK, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+5:
                reforge(player, creature, EQUIPMENT_SLOT_CHEST, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+6:
                reforge(player, creature, EQUIPMENT_SLOT_WRISTS, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+7:
                reforge(player, creature, EQUIPMENT_SLOT_HANDS, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+8:
                reforge(player, creature, EQUIPMENT_SLOT_WAIST, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+9:
                reforge(player, creature, EQUIPMENT_SLOT_LEGS, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+10:
                reforge(player, creature, EQUIPMENT_SLOT_FEET, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+11:
                reforge(player, creature, EQUIPMENT_SLOT_MAINHAND, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+12:
                reforge(player, creature, EQUIPMENT_SLOT_OFFHAND, code);
                break;
            case GOSSIP_ACTION_INFO_DEF+13:
                reforge(player, creature, EQUIPMENT_SLOT_RANGED, code);
                break;
        }

        return true;
    }
};

void AddSC_npc_reforging()
{
    new npc_reforging;
}
