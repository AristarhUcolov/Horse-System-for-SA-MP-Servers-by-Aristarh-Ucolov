/* Created by Aristarh Ucolov ( as Jon_Stark / Jon_Motorskull / John_Motorskull / and last ToGoRo ) */
public OnPlayerUpdate(playerid)
{
    new keys, ud, lr;
    GetPlayerKeys(playerid, keys, ud, lr);
    if((keys & (KEY_WALK)) == (KEY_WALK))
    {
        new Float:x, Float:y, Float:z, Float:angle;
        TogglePlayerControllable(playerid, false); // If you want, you can remove the function.
        GetPlayerPos(playerid, x, y, z);
        GetPlayerFacingAngle(playerid, angle);
        x += (0.1 * floatsin(-angle, degrees));
        y += (0.1 * floatcos(-angle, degrees));
        SetPlayerPos(playerid, x, y, z);
        ApplyAnimation(playerid, "BIKED", "BIKED_RIDE", 4.1, 1, 1, 1, 1, 0, 1);
    }
    if((keys & (KEY_SPRINT)) == (KEY_SPRINT) || (keys & (KEY_JUMP)) == (KEY_JUMP))
    {
        new Float:angle;
        GetPlayerFacingAngle(playerid, angle);
        if(keys == KEY_WALK) SetPlayerFacingAngle(playerid, angle-0.1);
        else SetPlayerFacingAngle(playerid, angle+0.1); 
        ApplyAnimation(playerid, "BIKED", "BIKED_RIDE", 4.1, 1, 1, 1, 1, 0, 1);
    }
    return 1;
}
 
CMD:horse(playerid,params[])
{
    SetPlayerAttachedObject(playerid, 5, 11733, 5, -0.627999, 1.480000, -0.126000, 93.399879, 1.999998, 77.299987, 1.103000, 1.112997, 1.014999);
    ApplyAnimation(playerid, "BIKED", "BIKED_RIDE", 4.1, 1, 1, 1, 1, 0, 1);
}
 
/* Created by Aristarh Ucolov ( as Jon_Stark / Jon_Motorskull / John_Motorskull / and last ToGoRo ) */