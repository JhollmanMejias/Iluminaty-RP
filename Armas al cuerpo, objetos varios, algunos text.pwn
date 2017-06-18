/////////////////////////Fs Creado Por [F]ri))ki/////////////////////////
/////////////////////////No Robar Creditos/////////////////////////

#include <a_samp>

#define ARMEDBODY_USE_HEAVY_WEAPON               (false)
#define DIALOGO_OBJ 15635

new Text:Textdraw0;
new Text:Textdraw1;
new Text:Textdraw3;
new Text:Textdraw4;
new Text:Textdraw5;
new Text:Textdraw6;
new Text:Textdraw7;
new Text:Textdraw8;
new Text:Textdraw9;
new ZLMensaje[][] =
{
   	"~w~Si necesitas saber algun comando puedes consultar usando el comando comando ~g~/Ayuda",
	"~w~Recuerda mantener tus licencias al día, para ver tus licencias usa ~r~/Licencias (ID)",
	"~w~Manten tu coche cerrado, evita robos usa ~g~/Llaves Coche~w~; Para ver mas ~g~/Ayuda Coche",
	"~w~Recuerda renovar los papeles de tu coche cada ~g~7~w~ d!as. Busca un ~g~NFS~w~ en la concesionaria",
	"~w~Necesitas contratar algun servicio?~g~ coloca un anuncio~w~ Usa el comando ~g~/AD (Texto)",
	"~w~Visita nuestra ~g~pagina web~w~ y ~g~registrate! ~r~rol.~w~biogames~r~.net",
	"~w~Visita nuestro ~g~TeamSpeak~w~ y mantente al tanto de todo ~g~ts3.biogames.net"
};

forward ZL();
forward TD();

static armedbody_pTick[MAX_PLAYERS];

public OnPlayerUpdate(playerid){
        if(GetTickCount() - armedbody_pTick[playerid] > 113){

				new weaponid[13],weaponammo[13],pArmedWeapon;
                pArmedWeapon = GetPlayerWeapon(playerid);
                GetPlayerWeaponData(playerid,1,weaponid[1],weaponammo[1]); // 5, 2, 5
                GetPlayerWeaponData(playerid,0,weaponid[0],weaponammo[2]);
                GetPlayerWeaponData(playerid,3,weaponid[3],weaponammo[3]);
                GetPlayerWeaponData(playerid,4,weaponid[4],weaponammo[4]);
                GetPlayerWeaponData(playerid,9,weaponid[9],weaponammo[5]);
                GetPlayerWeaponData(playerid,6,weaponid[6],weaponammo[6]);
                GetPlayerWeaponData(playerid,7,weaponid[9],weaponammo[9]);
                #if ARMEDBODY_USE_HEAVY_WEAPON
                GetPlayerWeaponData(playerid,7,weaponid[7],weaponammo[7]);
                #endif
                if(weaponid[1] && weaponammo[1] > 0){ // Cuchillo, katana, etc.
                        if(pArmedWeapon != weaponid[1]){
                                if(!IsPlayerAttachedObjectSlotUsed(playerid,0)){
                                        SetPlayerAttachedObject(playerid,0,GetWeaponModel(weaponid[1]),1, 0.199999, -0.139999, 0.030000, 0.500007, -115.000000, 0.000000, 1.000000, 1.000000, 1.000000);
                                }
                        }
                        else {
                                if(IsPlayerAttachedObjectSlotUsed(playerid,0)){
                                        RemovePlayerAttachedObject(playerid,0);
                                }
                        }
                }
                else if(IsPlayerAttachedObjectSlotUsed(playerid,0)){
                        RemovePlayerAttachedObject(playerid,0);
                }
                if(weaponid[2] && weaponammo[2] > 0){ // Pistolas.
                        if(pArmedWeapon != weaponid[2]){
                                if(!IsPlayerAttachedObjectSlotUsed(playerid,1)){
                                        SetPlayerAttachedObject(playerid,1,GetWeaponModel(weaponid[2]),8, -0.079999, -0.039999, 0.109999, -90.100006, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000);
                                }
                        }
                        else {
                                if(IsPlayerAttachedObjectSlotUsed(playerid,1)){
                                        RemovePlayerAttachedObject(playerid,1);
                                }
                        }
                }
                else if(IsPlayerAttachedObjectSlotUsed(playerid,1)){
                        RemovePlayerAttachedObject(playerid,1);
                }
                else if(IsPlayerAttachedObjectSlotUsed(playerid,0)){
                        RemovePlayerAttachedObject(playerid,0);
                }
                if(weaponid[3] && weaponammo[3] > 0){ // Escopetas
                        if(pArmedWeapon != weaponid[3]){
                                if(!IsPlayerAttachedObjectSlotUsed(playerid,6)){
                                        SetPlayerAttachedObject(playerid,6,GetWeaponModel(weaponid[3]),1, -0.072999, -0.086000, 0.159999, -162.799987, 11.400003, 11.899999, 1.000000, 1.000000, 1.000000);
                                }
                        }
                        else {
                                if(IsPlayerAttachedObjectSlotUsed(playerid,6)){
                                        RemovePlayerAttachedObject(playerid,6);
                                }
                        }
                }
                else if(IsPlayerAttachedObjectSlotUsed(playerid,6)){
                        RemovePlayerAttachedObject(playerid,6);
                }
                if(weaponid[4] && weaponammo[4] > 0){ // MP5
                        if(pArmedWeapon != weaponid[4]){
                                if(!IsPlayerAttachedObjectSlotUsed(playerid,0)){
                                        SetPlayerAttachedObject(playerid,0,GetWeaponModel(weaponid[4]),7, 0.000000, -0.100000, -0.080000, -95.000000, -10.000000, 0.000000, 1.000000, 1.000000, 1.000000);
                                }
                        }
                        else {
                                if(IsPlayerAttachedObjectSlotUsed(playerid,0)){
                                        RemovePlayerAttachedObject(playerid,0);
                                }
                        }
                }
                else if(IsPlayerAttachedObjectSlotUsed(playerid,2)){
                        RemovePlayerAttachedObject(playerid,2);
                }
                if(weaponid[5] && weaponammo[5] > 0){ // M4, AK
                        if(pArmedWeapon != weaponid[5]){
                                if(!IsPlayerAttachedObjectSlotUsed(playerid,3)){
                                        SetPlayerAttachedObject(playerid,3,GetWeaponModel(weaponid[5]),1, -0.051999, -0.121000, -0.213000, 8.500000, -2.400000, 1.699999, 1.000000, 1.000000 ,1.000000);
                                }
                        }
                        else {
                                if(IsPlayerAttachedObjectSlotUsed(playerid,3)){
                                        RemovePlayerAttachedObject(playerid,3);
                                }
                        }
                }
                else if(IsPlayerAttachedObjectSlotUsed(playerid,3)){
                        RemovePlayerAttachedObject(playerid,3);
                }
                if(weaponid[6] && weaponammo[6] > 0){ // Sniper Rifle.
                        if(pArmedWeapon != weaponid[6]){
                                if(!IsPlayerAttachedObjectSlotUsed(playerid,0)){
                                        SetPlayerAttachedObject(playerid,0,GetWeaponModel(weaponid[6]),1, 0.000000, -0.132999, -0.083999, -1.299999, 5.500000, 0.000000, 1.000000, 1.000000, 1.000000);
                                }
                        }
                        else {
                                if(IsPlayerAttachedObjectSlotUsed(playerid,0)){
                                        RemovePlayerAttachedObject(playerid,0);
                                }
                        }
                }
                else if(IsPlayerAttachedObjectSlotUsed(playerid,0)){
                        RemovePlayerAttachedObject(playerid,0);
                }
                if(weaponid[9] && weaponammo[9] > 0){ // Extintor.
                        if(pArmedWeapon != weaponid[9]){
                                if(!IsPlayerAttachedObjectSlotUsed(playerid,9)){
                                        SetPlayerAttachedObject(playerid,9,GetWeaponModel(weaponid[9]),1, 0.442000, -0.205999, 0.170999, 0.000000, 127.800033, 0.000000, 1.000000, 1.000000, 1.000000);
                                }
                        }
                        else {
                                if(IsPlayerAttachedObjectSlotUsed(playerid,9)){
                                        RemovePlayerAttachedObject(playerid,9);
                                }
                        }
                }
                else if(IsPlayerAttachedObjectSlotUsed(playerid,9)){
                        RemovePlayerAttachedObject(playerid,9);
                }
                #if ARMEDBODY_USE_HEAVY_WEAPON
                if(weaponid[7] && weaponammo[7] > 0){
                        if(pArmedWeapon != weaponid[7]){
                                if(!IsPlayerAttachedObjectSlotUsed(playerid,4)){
                                        SetPlayerAttachedObject(playerid,4,GetWeaponModel(weaponid[7]),1,-0.100000, 0.000000, -0.100000, 84.399932, 112.000000, 10.000000, 1.099999, 1.000000, 1.000000);
                                }
                        }
                        else {
                                if(IsPlayerAttachedObjectSlotUsed(playerid,4)){
                                        RemovePlayerAttachedObject(playerid,4);
                                }
                        }
                }
                else if(IsPlayerAttachedObjectSlotUsed(playerid,4)){
                        RemovePlayerAttachedObject(playerid,4);
                }
                #endif
                armedbody_pTick[playerid] = GetTickCount();
        }
        return true;
}
public OnGameModeInit()
{
    SetTimer("ZL",6000,1);

    Textdraw0 = TextDrawCreate(9.000000, 432.000000, "_"); // Sombreado negro abajo
    TextDrawBackgroundColor(Textdraw0, 255);
    TextDrawFont(Textdraw0, 1);
    TextDrawLetterSize(Textdraw0, 0.900000, 0.799991);
    TextDrawColor(Textdraw0, -1);
    TextDrawSetOutline(Textdraw0, 0);
    TextDrawSetProportional(Textdraw0, 1);
    TextDrawSetShadow(Textdraw0, 1);
    TextDrawUseBox(Textdraw0, 1);
    TextDrawBoxColor(Textdraw0, 90);
    TextDrawTextSize(Textdraw0, 631.000000, 43.000000);

    Textdraw1 = TextDrawCreate(93.000000, 429.000000, "~w~Si necesitas saber algun comando puedes consultar usando el comando comando ~b~/Ayuda"); // Texto en el sombreado
    TextDrawBackgroundColor(Textdraw1, 255);
    TextDrawFont(Textdraw1, 2);
    TextDrawLetterSize(Textdraw1, 0.240000, 1.399999);
    TextDrawColor(Textdraw1, -1);
    TextDrawSetOutline(Textdraw1, 0);
    TextDrawSetProportional(Textdraw1, 1);
    TextDrawSetShadow(Textdraw1, 0);

    Textdraw3 = TextDrawCreate(30.000000, 320.000000, "~b~~r~rol.~w~biogames~r~.net"); // Logo Sobre el mapa
    TextDrawBackgroundColor(Textdraw3, 255);
    TextDrawFont(Textdraw3, 3);
    TextDrawLetterSize(Textdraw3, 0.330000, 2.599999);
    TextDrawColor(Textdraw3, -1);
    TextDrawSetOutline(Textdraw3, 0);
    TextDrawSetProportional(Textdraw3, 1);
    TextDrawSetShadow(Textdraw3, 1);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////TextDraw Del Login//////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

   	Textdraw4 = TextDrawCreate(748.285522, 295.899993, "usebox");
	TextDrawLetterSize(Textdraw4, 0.000000, 19.215183);
	TextDrawTextSize(Textdraw4, 104.666671, 0.000000);
	TextDrawAlignment(Textdraw4, 3);
	TextDrawColor(Textdraw4, 255);
	TextDrawUseBox(Textdraw4, true);
	TextDrawBoxColor(Textdraw4, 255);
	TextDrawSetShadow(Textdraw4, 0);
	TextDrawSetOutline(Textdraw4, 0);
	TextDrawBackgroundColor(Textdraw4, 255);
	TextDrawFont(Textdraw4, 0);

	Textdraw5 = TextDrawCreate(641.619079, 1.500000, "usebox");
	TextDrawLetterSize(Textdraw5, 0.000000, 13.763334);
	TextDrawTextSize(Textdraw5, -2.000000, 0.000000);
	TextDrawAlignment(Textdraw5, 1);
	TextDrawColor(Textdraw5, 0);
	TextDrawUseBox(Textdraw5, true);
	TextDrawBoxColor(Textdraw5, 255);
	TextDrawSetShadow(Textdraw5, 0);
	TextDrawSetOutline(Textdraw5, 0);
	TextDrawFont(Textdraw5, 0);

	Textdraw6 = TextDrawCreate(641.238098, 128.646667, "usebox");
	TextDrawLetterSize(Textdraw6, 0.000000, 0.062592);
	TextDrawTextSize(Textdraw6, -2.000000, 0.000000);
	TextDrawAlignment(Textdraw6, 1);
	TextDrawColor(Textdraw6, -16776961);
	TextDrawUseBox(Textdraw6, true);
	TextDrawBoxColor(Textdraw6, -16776961);
	TextDrawSetShadow(Textdraw6, 0);
	TextDrawSetOutline(Textdraw6, 0);
	TextDrawFont(Textdraw6, 0);

	Textdraw7 = TextDrawCreate(2.000000, 295.900024, "usebox");
	TextDrawLetterSize(Textdraw7, 0.000000, -0.695928);
	TextDrawTextSize(Textdraw7, 637.619079, 0.000000);
	TextDrawAlignment(Textdraw7, 1);
	TextDrawColor(Textdraw7, 0);
	TextDrawUseBox(Textdraw7, true);
	TextDrawBoxColor(Textdraw7, -16776961);
	TextDrawSetShadow(Textdraw7, 0);
	TextDrawSetOutline(Textdraw7, 0);
	TextDrawFont(Textdraw7, 0);

	Textdraw8 = TextDrawCreate(227.428619, 132.693374, "~r~rol.~w~biogames~r~.net");
	TextDrawLetterSize(Textdraw8, 0.449999, 1.600000);
	TextDrawAlignment(Textdraw8, 1);
	TextDrawColor(Textdraw8, -1);
	TextDrawSetShadow(Textdraw8, 0);
	TextDrawSetOutline(Textdraw8, 1);
	TextDrawBackgroundColor(Textdraw8, 255);
	TextDrawFont(Textdraw8, 3);
	TextDrawSetProportional(Textdraw8, 1);
	return 0;
}
//* ======================================================================== *//
public OnPlayerSpawn(playerid)
{
    TextDrawShowForPlayer(playerid, Textdraw1);
    TextDrawShowForPlayer(playerid, Textdraw0);
    TextDrawShowForPlayer(playerid, Textdraw3);
   	TextDrawHideForPlayer(playerid, Textdraw4);
	TextDrawHideForPlayer(playerid, Textdraw5);
	TextDrawHideForPlayer(playerid, Textdraw6);
	TextDrawHideForPlayer(playerid, Textdraw7);
	TextDrawHideForPlayer(playerid, Textdraw8);
	TextDrawHideForPlayer(playerid, Textdraw9);
	return 0;
}
public OnPlayerConnect(playerid)
{
    TextDrawShowForPlayer(playerid, Textdraw4);
    TextDrawShowForPlayer(playerid, Textdraw5);
    TextDrawShowForPlayer(playerid, Textdraw6);
    TextDrawShowForPlayer(playerid, Textdraw7);
    TextDrawShowForPlayer(playerid, Textdraw8);
    TextDrawShowForPlayer(playerid, Textdraw9);
	return 0;
}
//* ======================================================================== *//
stock ZlDisplay(playerid)
{
	TextDrawShowForPlayer(playerid, Textdraw1);
	return 0;
}
//* ======================================================================== *//
stock BorrarZL(playerid)
{
TextDrawHideforPlayer(playerid, Textdraw1);
return 0;
}
//* ======================================================================== *//
stock GetWeaponModel(weaponid)
{
        switch(weaponid)
        {
            case 1:
                return 331;

                case 2..8:
                    return weaponid+331;

        case 9:
                    return 341;

                case 10..15:
                        return weaponid+311;

                case 16..18:
                    return weaponid+326;

                case 22..29:
                    return weaponid+324;

                case 30,31:
                    return weaponid+325;

                case 32:
                    return 372;

                case 33..45:
                    return weaponid+324;

                case 46:
                    return 371;
        }
        return 0;
}
public ZL()
{
TextDrawSetString(Textdraw1, ZLMensaje[random(sizeof(ZLMensaje))]);
return 0;
}
public OnPlayerCommandText(playerid, cmdtext[])
{
if (strcmp("/varios", cmdtext, true, 10) == 0)
{
ShowPlayerDialog(playerid,DIALOGO_OBJ,DIALOG_STYLE_LIST,"{2E2EFE}Objetos Varios || {F50000}Quitar: /qVarios","{00CCFF}Bolsa De Comida              \n{00CCFF}Caña De Pesca               \n{00CCFF}Bidón de Gasolina               \n{00CCFF}Fajo De Dinero               \n{00CCFF}Linterna               \n{00CCFF}Loro               \n{00CCFF}Casco","Agregar","Cancelar");
return 1;
}
if (strcmp("/qvarios", cmdtext, true, 10) == 0)
{
RemovePlayerAttachedObject(playerid,1);
RemovePlayerAttachedObject(playerid,2);
RemovePlayerAttachedObject(playerid,3);
RemovePlayerAttachedObject(playerid,4);
RemovePlayerAttachedObject(playerid,5);
RemovePlayerAttachedObject(playerid,10);
RemovePlayerAttachedObject(playerid,9);
RemovePlayerAttachedObject(playerid,8);
RemovePlayerAttachedObject(playerid,7);
RemovePlayerAttachedObject(playerid,6);
return 1;
}

return 0;
}



public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
if(dialogid == DIALOGO_OBJ)
{
if(response)
{
if(listitem==0)
{
SetPlayerAttachedObject( playerid, 8, 2663, 5, 0.233000, 0.034000, -0.013000, 0.000000, -92.700019, 4.199999, 0.574999, 0.501999, 0.525000); // Bolsa de Comida

}
if(listitem==1)
{

SetPlayerAttachedObject( playerid, 9, 18632, 6, 0.093999, 0.040000, 0.017000, -172.899993, -3.400000, 3.300000, 1.000000, 1.000000, 1.000000); // Caña de Pesca
}
if(listitem==2)
{

SetPlayerAttachedObject( playerid, 9, 1650, 6, 0.141999, 0.039999, 0.035000, 0.000000, -100.199996, 0.000000, 0.768999, 1.000000, 0.712999); // Bidón
}
if(listitem==3)
{

SetPlayerAttachedObject( playerid, 8, 1212, 5, 0.091999, 0.104000, -0.019000, 89.100006, 0.000000, -83.800010, 1.000000, 1.000000, 1.000000); // New
}
if(listitem==4)
{

SetPlayerAttachedObject(playerid, 9, 18641, 6, 0.089000, 0.046000, 0.083999, 0.199998, 171.700027, -44.200000, 1.000000, 1.000000, 1.000000); // Linterna
}
if(listitem==5)
{

SetPlayerAttachedObject( playerid, 4, 19078, 1, 0.329150, -0.072101, 0.156082, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000 ); // Loro
}
if(listitem==6)
{

SetPlayerAttachedObject( playerid, 4, 18645, 2, 0.079577, 0.016865, 0.005709, 171.620758, 93.131149, 280.057983, 1.000000, 1.000000, 1.000000 ); // Casco
}
if(listitem==7)
{

SetPlayerAttachedObject( playerid, 9, 18632, 6, 0.093999, 0.040000, 0.017000, -172.899993, -3.400000, 3.300000, 1.000000, 1.000000, 1.000000); // Caña de Pesca
}
if(listitem==8)
{

SetPlayerAttachedObject( playerid, 0, 18845, 1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, -0.027590, -0.027590, -0.027590 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==9)
{
ShowPlayerDialog(playerid,DIALOGO_OBJ+1,DIALOG_STYLE_LIST,"{2E2EFE}Objetos v1.0","{00CCFF}Maleta               \n{00CCFF}Bolsa-Dinero               \n{00CCFF}Hombre-Tiburon               \n{00CCFF}Hombre-Delfin               \n{00CCFF}sombrero-Cluckin Bell               \n{00CCFF}BeachBall                \n{00CCFF}BasketBall                \n{00CCFF}Sa-Mp Logo                \n{00FF00}Siguiente","Agregar","Cancelar");
}
}
return 1;
}
if(dialogid == DIALOGO_OBJ+1)
{
if(response)
{
if(listitem==0)
{

SetPlayerAttachedObject( playerid, 0, 1210, 6, 0.259532, -0.043030, -0.009978, 85.185333, 271.380615, 253.650283, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==1)
{

SetPlayerAttachedObject( playerid, 0, 1550, 15, 0.016491, 0.205742, -0.208498, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==2)
{

SetPlayerAttachedObject( playerid, 0, 1608, 1, 0.201047, -1.839761, -0.010739, 0.000000, 90.005447, 0.000000, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==3)
{

SetPlayerAttachedObject( playerid, 0, 1607, 1, 0.000000, 0.000000, 0.000000, 0.000000, 86.543479, 0.000000, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==4)
{

SetPlayerAttachedObject( playerid, 0, 19137, 2, 0.110959, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==5)
{

SetPlayerAttachedObject( playerid, 0, 1598, 2, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==6)
{

SetPlayerAttachedObject( playerid, 0, 2114, 2, 0.043076, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==7)
{

SetPlayerAttachedObject( playerid, 0, 18749, 2, 0.264992, 0.043229, -0.004249, 0.000000, 87.368362, 165.130233, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==8)
{
ShowPlayerDialog(playerid,DIALOGO_OBJ+2,DIALOG_STYLE_LIST,"{2E2EFE}Objetos v1.0","{00CCFF}Hombre-Toro              \n{00CCFF}Escudo               \n{00CCFF}Dildo-1               \n{00CCFF}Dildo-2               \n{00CCFF}Dildo-3               \n{00FF00}Remover Objetos","Agregar","Cancelar");
}
}
return 1;
}

if(dialogid == DIALOGO_OBJ+2)
{
if(response)
{
if(listitem==0)
{

SetPlayerAttachedObject( playerid, 0, 2045, 5, 0.054017, -0.143008, -0.296382, 236.015472, 0.000000, 0.000000, 1.677617, 1.000000, 1.000000 );
SetPlayerAttachedObject( playerid, 1, 1736, 15, -0.052946, -0.209805, 0.302906, 0.000000, 0.000000, 0.000000, 1.438930, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==1)
{

SetPlayerAttachedObject( playerid, 1, 18637, 13, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==2)
{

SetPlayerAttachedObject( playerid, 0, 321, 1, -0.351133, 0.125670, 0.008458, 267.892150, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==3)
{

SetPlayerAttachedObject( playerid, 0, 19086, 8, -0.071553, -0.079917, -0.126324, 285.126586, 272.391174, 12.223253, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
}
if(listitem==4)
{

SetPlayerAttachedObject( playerid, 0, 19086, 8, -0.071553, -0.079917, -0.126324, 285.126586, 272.391174, 12.223253, 1.000000, 1.000000, 1.000000 );
SendClientMessage(playerid, 0x0000FFAA,"{FFFFFF}- Utiliza {2E2EFE}/objetosoff {FFFFFF}para eliminar los objetos.");
ApplyAnimation(playerid, "PAULNMAC", "wank_in", 4.0, 1, 1, 1, 1, 1);
}
if(listitem==5)
{
SendClientMessage(playerid, 0x0000FFAA,"{66FF00}- OBJETOS REMOVIDOS! {FFFFFF}Tambien utiliza {2E2EFE}/objetosoff");
for(new i;i<5;i++) RemovePlayerAttachedObject(playerid,i);
}
}
return 1;
}
return 1;
}
