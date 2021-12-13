	.intel_syntax noprefix

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0011:	.ascii	"\"\0"
.balign 4
_Lt_0014:	.ascii	",\0"

.section .bss
.balign 4
	.lcomm	_CLV_BUFFER_FOCUS,4

.section .data
.balign 4
_CLV_BUFFER:
.long 0
.long 0
.int 0
.int 4
.int 2
.int 18
.skip 24,0
.balign 4
_CLV_GLYPH:
.long 0
.long 0
.int 0
.int 4
.int 2
.int 18
.skip 24,0
.balign 4
_CLV_FONT:
.long 0
.long 0
.int 0
.int 4
.int 1
.int 17
.skip 12,0
.balign 4
_DB_NAMES:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_DB_INPUT:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_DB_QUEUE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_NAMES_BUFFER:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_DATA_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_QUEUE_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_MAP_BUFFER:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0

.section .bss

.globl _WIN_SI
.balign 4
	.comm	_WIN_SI,2

.globl _MAPPATH_STR
.balign 4
	.comm	_MAPPATH_STR,12

.globl _MAP_STR
.balign 4
	.comm	_MAP_STR,12

.globl _LVUPPATH_STR
.balign 4
	.comm	_LVUPPATH_STR,12

.globl _LVUP_STR
.balign 4
	.comm	_LVUP_STR,12

.globl _THISPATH_STR
.balign 4
	.comm	_THISPATH_STR,12

.globl _FONTPATH_STR
.balign 4
	.comm	_FONTPATH_STR,12

.globl _LOGOPATH_STR
.balign 4
	.comm	_LOGOPATH_STR,12

.globl _SPRITEPATH_STR
.balign 4
	.comm	_SPRITEPATH_STR,12

.globl _PALPATH_STR
.balign 4
	.comm	_PALPATH_STR,12

.globl _HELPPATH_STR
.balign 4
	.comm	_HELPPATH_STR,12

.globl _HELPFILENAME_STR
.balign 4
	.comm	_HELPFILENAME_STR,12
.balign 4
	.lcomm	_E_STRA,7077996
.balign 8
	.lcomm	_G_DFA,8913032
.balign 4
	.lcomm	_D_SIA,30
.balign 4
	.lcomm	_T_SIA,8210
.balign 4
	.lcomm	_L_SIA,130

.section .data
.balign 4
_WIN_SIA:
.long 0
.long 0
.int 0
.int 2
.int 1
.int 17
.skip 12,0
.balign 4
_FONTSHEETS:
.long 0
.long 0
.int 0
.int 4
.int 1
.int 17
.skip 12,0

.section .bss
.balign 4
	.lcomm	_PAL,1024

.section .data
.balign 4
_Lt_0023:
.int _PAL
.int _PAL
.int 1024
.int 4
.int 1
.int 49
.int 256
.int 0
.int 255

.section .bss
.balign 4
	.lcomm	_PAGES,128
.balign 4
	.lcomm	_GTMP,4
.balign 4
	.lcomm	_GTMPT,4
.balign 4
	.lcomm	_MOUSE_STR,12
.balign 4
	.lcomm	_EX_SI,2
.balign 4
	.lcomm	_DY_SI,2
.balign 4
	.lcomm	_MDX_SI,2
.balign 4
	.lcomm	_MDY_SI,2
.balign 4
	.lcomm	_TEXTDELAY_SF,4
.balign 4
	.lcomm	_TEXTCOLOR_SI,2
.balign 4
	.lcomm	_C_STR,12
.balign 4
	.lcomm	_CLAST_STR,12
.balign 4
	.lcomm	_TEXTS_STR,12
.balign 4
	.lcomm	_TEMP1_STR,12
.balign 4
	.lcomm	_TEMP2_STR,12
.balign 4
	.lcomm	_RR_STR,12
.balign 4
	.lcomm	_I_SI,2
.balign 4
	.lcomm	_A_STR,12
.balign 4
	.lcomm	_H_STR,12
.balign 4
	.lcomm	_TTT_SI,2
.balign 4
	.lcomm	_MS_SI,2
.balign 4
	.lcomm	_T_SI,2
.balign 4
	.lcomm	_CTRL_STR,12
.balign 4
	.lcomm	_TY_SI,2
.balign 4
	.lcomm	_DD_SI,2
.balign 4
	.lcomm	_TX_SI,2
.balign 4
	.lcomm	_AA_SI,2
.balign 4
	.lcomm	_R_STR,12
.balign 4
	.lcomm	_BG_STR,12
.balign 4
	.lcomm	_FG_STR,12
.balign 4
	.lcomm	_RG_STR,12
.balign 4
	.lcomm	_RBG_STR,12
.balign 4
	.lcomm	_RFG_STR,12
.balign 4
	.lcomm	_RID_SF,4
.balign 4
	.lcomm	_PRFLIDTY_STR,12
.balign 4
	.lcomm	_PRFLACTN_STR,12
.balign 4
	.lcomm	_PRFLACTNCT_STR,12
.balign 4
	.lcomm	_PRFLGPIC_STR,12
.balign 4
	.lcomm	_PRFLCMND_STR,12
.balign 4
	.lcomm	_PRFLGPICACTN_STR,12
.balign 4
	.lcomm	_PRFLIDTY_SF,4
.balign 4
	.lcomm	_PRFLHP_SF,4
.balign 4
	.lcomm	_PRFLSTR_SF,4
.balign 4
	.lcomm	_PRFLESS_SF,4
.balign 4
	.lcomm	_PRFLSPD_SF,4
.balign 4
	.lcomm	_PRFLARMR_SF,4
.balign 4
	.lcomm	_PRFLEXP_SF,4
.balign 4
	.lcomm	_PRFLVALU_SF,4
.balign 4
	.lcomm	_PRFLPIRC_SF,4
.balign 4
	.lcomm	_PRFLCHCK_SF,4
.balign 4
	.lcomm	_PRFLLV_SF,4
.balign 4
	.lcomm	_PRFLHPMAX_SF,4
.balign 4
	.lcomm	_PRFLSTRMAX_SF,4
.balign 4
	.lcomm	_PRFLESSMAX_SF,4
.balign 4
	.lcomm	_PRFLESSSPD_SF,4
.balign 4
	.lcomm	_PRFLEVAD_SF,4
.balign 4
	.lcomm	_PRFLBLNK_SF,4
.balign 4
	.lcomm	_MAPNAME_STR,12
.balign 4
	.lcomm	_RR_SF,4
.balign 4
	.lcomm	_COLR_SI,2
.balign 4
	.lcomm	_TEXT_STR,12
.balign 4
	.lcomm	_A_SI,2
.balign 4
	.lcomm	_D_SI,2
.balign 4
	.lcomm	_DIS_SI,2
.balign 4
	.lcomm	_STATX_SI,2
.balign 4
	.lcomm	_VIEWX_SI,2
.balign 4
	.lcomm	_FRAMEC1_SI,2
.balign 4
	.lcomm	_FRAMEC2_SI,2
.balign 4
	.lcomm	_FRAMEX1_SF,4
.balign 4
	.lcomm	_FRAMEX2_SF,4
.balign 4
	.lcomm	_FRAMEY1_SF,4
.balign 4
	.lcomm	_FRAMEY2_SF,4
.balign 4
	.lcomm	_TITLED_SI,2
.balign 4
	.lcomm	_AM_STR,12
.balign 4
	.lcomm	_AM,2
.balign 4
	.lcomm	_XM_SI,2
.balign 4
	.lcomm	_YM_SI,2
.balign 4
	.lcomm	_MOUSE_WIDTH,2
.balign 4
	.lcomm	_MOUSE_HEIGHT,2
.balign 4
	.lcomm	_SCREEN_WIDTH,2
.balign 4
	.lcomm	_SCREEN_HEIGHT,2
.balign 4
	.lcomm	_DISPLAY_WIDTH,2
.balign 4
	.lcomm	_DISPLAY_HEIGHT,2
.balign 4
	.lcomm	_AX,2
.balign 4
	.lcomm	_BX,2
.balign 4
	.lcomm	_CX,2
.balign 4
	.lcomm	_DX,2
.balign 4
	.lcomm	_XXMOUSE_SI,2
.balign 4
	.lcomm	_YYMOUSE_SI,2
.balign 4
	.lcomm	_LB_SI,2
.balign 4
	.lcomm	_RB_SI,2
.balign 4
	.lcomm	_XMOUSE_SI,2
.balign 4
	.lcomm	_YMOUSE_SI,2
.balign 4
	.lcomm	_JSX_SI,2
.balign 4
	.lcomm	_JSY_SI,2
.balign 4
	.lcomm	_JSA_SI,2
.balign 4
	.lcomm	_JSB_SI,2
.balign 4
	.lcomm	_LLB_SI,2
.balign 4
	.lcomm	_RRB_SI,2
.balign 4
	.lcomm	_L1B_SI,2
.balign 4
	.lcomm	_R1B_SI,2
.balign 4
	.lcomm	_ACTION_STR,12
.balign 4
	.lcomm	_AA_STR,12
.balign 4
	.lcomm	_ST_SF,4
.balign 4
	.lcomm	_TEMPX_SI,2
.balign 4
	.lcomm	_TEMPY_SI,2
.balign 4
	.lcomm	_STRUSE,2
.balign 4
	.lcomm	_ESSUSE,2
.balign 4
	.lcomm	_EVADEATTACK,2
.balign 4
	.lcomm	_ATTACKBLOCKED,2
.balign 4
	.lcomm	_ATTACKDAMAGE,2
.balign 4
	.lcomm	_ATTACKPIC_STR,12
.balign 4
	.lcomm	_ATTACKNAME_STR,12
.balign 4
	.lcomm	_TEMPTX_SI,2
.balign 4
	.lcomm	_TEMPTY_SI,2
.balign 4
	.lcomm	_TEMPDIS_SI,2
.balign 4
	.lcomm	_SLEPADD_SI,2
.balign 4
	.lcomm	_LVGAIN_SI,2
.balign 4
	.lcomm	_VALUGAIN_SI,2
.balign 4
	.lcomm	_EXPGAIN_SI,2
.balign 4
	.lcomm	_STRGAIN_SI,2
.balign 4
	.lcomm	_ESSGAIN_SI,2
.balign 4
	.lcomm	_MENUITEM_SI,2
.balign 4
	.lcomm	_MENUSELECT_SI,2
.balign 4
	.lcomm	_MENU_STR,12
.balign 4
	.lcomm	_HAVEIT_STR,12
.balign 4
	.lcomm	_MENUSIZE_SI,2
.balign 4
	.lcomm	_INMENU_SI,2
.balign 4
	.lcomm	_MENUCOST_SI,2
.balign 4
	.lcomm	_MENUITEM_STR,12
.balign 4
	.lcomm	_MENUSELECT_STR,12
.balign 4
	.lcomm	_HASHADIT_STR,12
.balign 4
	.lcomm	_GETIT_STR,12
.balign 4
	.lcomm	_AM_SI,2
.balign 4
	.lcomm	_ARE_SI,2
.balign 4
	.lcomm	_ARE_STR,12
.balign 4
	.lcomm	_DX1_SI,2
.balign 4
	.lcomm	_DY1_SI,2
.balign 4
	.lcomm	_DX2_SI,2
.balign 4
	.lcomm	_DY2_SI,2
.balign 4
	.lcomm	_TTX,2
.balign 4
	.lcomm	_TTY,2
.balign 4
	.lcomm	_TT_SF,4
.balign 4
	.lcomm	_TEMPX_SF,4
.balign 4
	.lcomm	_TEMPY_SF,4
.balign 4
	.lcomm	_TEMPD_SI,2
.balign 4
	.lcomm	_THERE_STR,12
.balign 4
	.lcomm	_THERE_SI,2
.balign 4
	.lcomm	_MOVE_SI,2
.balign 4
	.lcomm	_TEMPACTION_STR,12
.balign 4
	.lcomm	_INBOUNDS_SI,2
.balign 4
	.lcomm	_HAVEIT_SI,2
.balign 4
	.lcomm	_T_STR,12
.balign 4
	.lcomm	_TT_STR,12
.balign 4
	.lcomm	_HAVEGOTIT_STR,12
.balign 4
	.lcomm	_GETIT_SI,2
.balign 4
	.lcomm	_WINIT_STR,12
.balign 4
	.lcomm	_HASIT_STR,12
.balign 4
	.lcomm	_HASIT_SI,2
.balign 4
	.lcomm	_HERE_SI,2
.balign 4
	.lcomm	_BLANKCHECK_STR,12
.balign 4
	.lcomm	_BLANKCHECK_SI,2
.balign 4
	.lcomm	_CRSRX_SI,2
.balign 4
	.lcomm	_CRSRY_SI,2
.balign 4
	.lcomm	_ATTACKTHEM_STR,12
.balign 4
	.lcomm	_HAVEHADIT_STR,12
.balign 4
	.lcomm	_STRUSE_SI,2
.balign 4
	.lcomm	_ESSSE_SI,2
.balign 4
	.lcomm	_STRDAMAGE_SI,2
.balign 4
	.lcomm	_R1_SI,2
.balign 4
	.lcomm	_R2_SI,2
.balign 4
	.lcomm	_R3_SI,2
.balign 4
	.lcomm	_R4_SI,2
.balign 4
	.lcomm	_R5_SI,2
.balign 4
	.lcomm	_EXITCOMMAND3,4
.balign 4
	.lcomm	_EXITCOMMAND2,4
.balign 4
	.lcomm	_EXITCOMMAND,4
.balign 4
	.lcomm	_RESTART_ROE,4
.balign 4
	.lcomm	_TEMPX1_SF,4
.balign 4
	.lcomm	_TEMPY1_SF,4
.balign 4
	.lcomm	_TEMPX2_SF,4
.balign 4
	.lcomm	_TEMPY2_SF,4
.balign 4
	.lcomm	_T_SF,2
.balign 4
	.lcomm	_R_SI,2
.balign 4
	.lcomm	_TT_SI,2
.balign 4
	.lcomm	_HERE_STR,12
.balign 4
	.lcomm	_HASGOTIT_STR,12

.section .data
.balign 4
_.Lt_0026:
.short 1
.int _Lt_0028
.short 1
.int _Lt_0028
.short -1
.int _.Lt_002A
.balign 4
_Lt_0028:	.ascii	"1\0"
.balign 4
_.Lt_002A:
.short 1
.int _Lt_0028
.short 1
.int _Lt_002C
.short -1
.int _.Lt_002E
.balign 4
_Lt_002C:	.ascii	"4\0"
.balign 4
_.Lt_002E:
.short 1
.int _Lt_0028
.short 1
.int _Lt_0030
.short -1
.int _.Lt_0032
.balign 4
_Lt_0030:	.ascii	"8\0"
.balign 4
_.Lt_0032:
.short 1
.int _Lt_0028
.short 2
.int _Lt_0034
.short -1
.int _.Lt_0036
.balign 4
_Lt_0034:	.ascii	"12\0"
.balign 4
_.Lt_0036:
.short 1
.int _Lt_0028
.short 2
.int _Lt_0038
.short -1
.long 0
.balign 4
_Lt_0038:	.ascii	"16\0"
.balign 4
_Lt_003B:	.ascii	".\\\0"
.balign 4
_Lt_003C:	.ascii	"fonts\\\0"
.balign 4
_Lt_003D:	.ascii	"logos\\\0"
.balign 4
_Lt_003E:	.ascii	"sprites\\\0"
.balign 4
_Lt_003F:	.ascii	"pal\\\0"
.balign 4
_Lt_0040:	.ascii	"maps\\\0"
.balign 4
_Lt_0041:	.ascii	"help\\\0"
.balign 4
_Lt_0042:	.ascii	"roe4help.hlp\0"
.balign 4
_Lt_0043:	.ascii	"demo.vds\0"
.balign 4
_Lt_0044:	.ascii	"lvup\\\0"
.balign 4
_Lt_0045:	.ascii	"roe_lvup.dat\0"
.balign 4
_Lt_0046:	.ascii	".\\dict\\input.txt\0"
.balign 4
_Lt_0048:	.ascii	"QBPALVGA.DAT\0"
.balign 4
_Lt_004C:	.ascii	".\\fonts\\mishap22.font.png\0"
.balign 4
_Lt_004E:	.ascii	".\\fonts\\roe00.font.png\0"
.balign 4
_Lt_0050:	.ascii	"[F1 Save|F2 Load|F3 Shop]\0"
.balign 4
_Lt_0059:	.ascii	"t\0"
.balign 4
_Lt_006B:	.ascii	"L ||\0"
.balign 4
_Lt_006C:	.ascii	" \0"
.balign 4
_Lt_0070:	.ascii	"L||\0"
.balign 4
_Lt_0078:	.ascii	".\\dict\\names.txt\0"
.balign 4
_Lt_0087:	.ascii	"pndximp_\0"
.balign 4
_Lt_008A:	.ascii	"dust\0"
.balign 4
_Lt_0095:	.ascii	"____\0"
.balign 4
_Lt_0096:	.ascii	"________\0"
.balign 4
_Lt_009B:	.ascii	"spdr\0"
.balign 4
_Lt_009D:	.ascii	"Spider\0"
.balign 4
_Lt_009E:	.ascii	"movebiteweb_\0"
.balign 4
_Lt_00A1:	.ascii	"0001\0"
.balign 4
_Lt_00A5:	.ascii	"vnom\0"
.balign 4
_Lt_00A7:	.ascii	"wall\0"
.balign 4
_Lt_00AA:	.ascii	"web_\0"
.balign 4
_Lt_00AC:	.ascii	"Web\0"
.balign 4
_Lt_00AE:	.ascii	"grml\0"
.balign 4
_Lt_00B0:	.ascii	"Gremlin\0"
.balign 4
_Lt_00B1:	.ascii	"movebitepnch\0"
.balign 4
_Lt_00B4:	.ascii	"dggr\0"
.balign 4
_Lt_00B6:	.ascii	"pndx\0"
.balign 4
_Lt_00B8:	.ascii	"Poindexter\0"
.balign 4
_Lt_00B9:	.ascii	"wstf\0"
.balign 4
_Lt_00BB:	.ascii	"dtby\0"
.balign 4
_Lt_00BD:	.ascii	"Dust Bunny\0"
.balign 4
_Lt_00BE:	.ascii	"movebitekickdtbydust\0"
.balign 4
_Lt_00C0:	.ascii	"shkt\0"
.balign 4
_Lt_00C2:	.ascii	"Shiny Knight\0"
.balign 4
_Lt_00C3:	.ascii	"movepnchdggr\0"
.balign 4
_Lt_00C5:	.ascii	"emgd\0"
.balign 4
_Lt_00C7:	.ascii	"Emerald Guard\0"
.balign 4
_Lt_00CC:	.ascii	"pike\0"
.balign 4
_Lt_00CE:	.ascii	"door\0"
.balign 4
_Lt_00D0:	.ascii	"Door\0"
.balign 4
_Lt_00D4:	.ascii	"loc1\0"
.balign 4
_Lt_00D7:	.ascii	"loc2\0"
.balign 4
_Lt_00DA:	.ascii	"loc3\0"
.balign 4
_Lt_00DC:	.ascii	"imp_\0"
.balign 4
_Lt_00DE:	.ascii	"Little Imp\0"
.balign 4
_Lt_00DF:	.ascii	"movewingfire\0"
.balign 4
_Lt_00E2:	.ascii	"Merchant\0"
.balign 4
_Lt_00E3:	.ascii	"dggrgrplseed\0"
.balign 4
_Lt_00E8:	.ascii	"chst\0"
.balign 4
_Lt_00EA:	.ascii	"Treasure chest\0"
.balign 4
_Lt_00ED:	.ascii	"key1\0"
.balign 4
_Lt_00EE:	.ascii	"key2\0"
.balign 4
_Lt_00F0:	.ascii	"bldr\0"
.balign 4
_Lt_00F2:	.ascii	"Big boulder\0"
.balign 4
_Lt_00F8:	.ascii	"Puzzlum : Realm of Existence\0"
.balign 4
_Lt_00F9:	.ascii	"Build: puzzlum-fbc068.200908170813\0"
.balign 4
_Lt_00FA:	.ascii	"Created 1989-2009 Timothy Robert Keal\0"
.balign 4
_Lt_00FB:	.ascii	"Released under Gnu Public License 2.0\0"
.balign 4
_Lt_00FC:	.ascii	"http://www.gnu.org/copyleft/gpl.html\0"
.balign 4
_Lt_00FD:	.ascii	"http://puzzlum.retromachineshop.com/\0"
.balign 4
_Lt_00FE:	.ascii	"irc://chat.freenode.net/puzzlum\0"
.balign 4
_Lt_00FF:	.ascii	"mailto:jargon@juno.com\0"
.balign 4
_Lt_0100:	.ascii	" (H)elp\0"
.balign 4
_Lt_0101:	.ascii	" (C)ontinue\0"
.balign 4
_Lt_0102:	.ascii	" (R)estart\0"
.balign 4
_Lt_0103:	.ascii	" (Q)uit\0"
.balign 4
_Lt_0104:	.ascii	"r\0"
.balign 4
_Lt_0105:	.ascii	"R\0"
.balign 4
_Lt_0108:	.ascii	"q\0"
.balign 4
_Lt_0109:	.ascii	"Q\0"
.balign 4
_Lt_010C:	.ascii	"h\0"
.balign 4
_Lt_010D:	.ascii	"H\0"
.balign 4
_Lt_0110:	.ascii	"c\0"
.balign 4
_Lt_0111:	.ascii	"C\0"
.balign 4
_Lt_0118:	.ascii	"\376 page start\0"
.balign 4
_Lt_011B:	.ascii	"\376 page end\0"
.balign 4
_Lt_011E:	.ascii	" (T)itle\0"
.balign 4
_Lt_0122:	.ascii	"T\0"
.balign 4
_Lt_0125:	.ascii	"\376 end\0"
.balign 4
_Lt_0128:	.ascii	"\376 COLOR\0"
.balign 4
_Lt_013D:	.ascii	"zzzz\0"
.balign 4
_Lt_0153:	.ascii	"fire\0"
.balign 4
_Lt_0158:	.ascii	"ccts\0"
.balign 4
_Lt_0170:	.ascii	"0002\0"
.balign 4
_Lt_0177:	.ascii	"&HFF3B\0"
.balign 4
_Lt_017A:	.ascii	"&HFF3C\0"
.balign 4
_Lt_017E:	.ascii	"&HFF3D\0"
.balign 4
_Lt_0181:	.ascii	"L\0"
.balign 4
_Lt_0184:	.ascii	"&H20\0"
.balign 4
_Lt_0187:	.ascii	"&HFF48\0"
.balign 4
_Lt_018A:	.ascii	"&HFF4D\0"
.balign 4
_Lt_018D:	.ascii	"&HFF50\0"
.balign 4
_Lt_0190:	.ascii	"&HFF4B\0"
.balign 4
_Lt_01A6:	.ascii	"||\0"
.balign 4
_Lt_01B4:	.ascii	"&HFF47\0"
.balign 4
_Lt_01B7:	.ascii	"&HFF4F\0"
.balign 4
_Lt_01BA:	.ascii	"&HFF49\0"
.balign 4
_Lt_01BF:	.ascii	"&HFF51\0"
.balign 4
_Lt_01EA:	.ascii	"bite\0"
.balign 4
_Lt_01ED:	.ascii	"pnch\0"
.balign 4
_Lt_01F0:	.ascii	"kick\0"
.balign 4
_Lt_01F9:	.ascii	"cure\0"
.balign 4
_Lt_0218:	.ascii	"burn\0"
.balign 4
_Lt_0221:	.ascii	"tngl\0"
.balign 4
_Lt_0224:	.ascii	"lash\0"
.balign 4
_Lt_0237:	.ascii	"slep\0"
.balign 4
_Lt_0242:	.ascii	"pouch\0"
.balign 4
_Lt_0243:	.ascii	"pwch\0"
.balign 4
_Lt_024B:	.ascii	"lvup\0"
.balign 4
_Lt_0252:	.ascii	"ispt\0"
.balign 4
_Lt_0259:	.ascii	"move\0"
.balign 4
_Lt_027C:	.ascii	"cncl\0"
.balign 4
_Lt_0286:	.ascii	"\372\0"
.balign 4
_Lt_0287:	.ascii	"-\0"
.balign 4
_Lt_0288:	.ascii	"----\0"
.balign 4
_Lt_0289:	.ascii	"$\0"
.balign 4
_Lt_02B3:	.ascii	"grpl\0"
.balign 4
_Lt_02B8:	.ascii	"seed\0"
.balign 4
_Lt_02C4:	.ascii	"Wha'du like?\0"
.balign 4
_Lt_02C8:	.ascii	"____.24\0"
.balign 4
_Lt_02F2:	.ascii	"bye_\0"
.balign 4
_Lt_02F5:	.ascii	"Poindexter:\0"
.balign 4
_Lt_02F7:	.ascii	"Hi. How are you. My\0"
.balign 4
_Lt_02F9:	.ascii	"name is Poindexter. I\0"
.balign 4
_Lt_02FB:	.ascii	"am the greatest thief\0"
.balign 4
_Lt_02FD:	.ascii	"in the entire world!!!\0"
.balign 4
_Lt_030A:	.ascii	" =\0"
.balign 4
_Lt_0323:	.ascii	"gained\0"
.balign 4
_Lt_032D:	.ascii	"      level up!\0"
.balign 4
_Lt_032F:	.ascii	"HPmax +\0"
.balign 4
_Lt_0333:	.ascii	"STRmax +\0"
.balign 4
_Lt_0337:	.ascii	"ESSmax +\0"
.balign 4
_Lt_033B:	.ascii	"STRspd up!\0"
.balign 4
_Lt_033D:	.ascii	"ESSspd up!\0"
.balign 4
_Lt_0343:	.ascii	"reached LV!\0"
.balign 4
_Lt_0349:	.ascii	"next:\0"
.balign 4
_Lt_0360:	.ascii	"from\0"
.balign 4
_Lt_0362:	.ascii	"!\0"
.balign 4
_Lt_0369:	.ascii	"used\0"
.balign 4
_Lt_036B:	.ascii	"on\0"
.balign 4
_Lt_0372:	.ascii	"HP -\0"
.balign 4
_Lt_0376:	.ascii	"STR-\0"
.balign 4
_Lt_037E:	.ascii	"pillaged\0"
.balign 4
_Lt_0380:	.ascii	"EXP+\0"
.balign 4
_Lt_0385:	.ascii	"EXP:\0"
.balign 4
_Lt_038A:	.ascii	"STR+\0"
.balign 4
_Lt_038E:	.ascii	"STR:\0"
.balign 4
_Lt_03B8:	.ascii	".24\0"
.balign 4
_Lt_03D8:	.ascii	"zzzz____.24\0"
.balign 4
_Lt_03E4:	.ascii	"rapl\0"
.balign 4
_Lt_03F9:	.ascii	"A RetroMachineShop Featured Project!\0"
.balign 4
_Lt_0403:	.ascii	"LV\0"
.balign 4
_Lt_0406:	.ascii	"     \0"
.balign 4
_Lt_040B:	.ascii	"HP\0"
.balign 4
_Lt_040E:	.ascii	"/\0"
.balign 4
_Lt_0411:	.ascii	"STR\0"
.balign 4
_Lt_0416:	.ascii	"ESS\0"
.balign 4
_Lt_0421:	.ascii	"____pwch\0"
.balign 4
_Lt_0424:	.ascii	"watr\0"
.balign 4
_Lt_0429:	.ascii	"hole\0"
.balign 4
_Lt_042A:	.ascii	"holestpsstp2\0"
.balign 4
_Lt_0451:	.ascii	"Flame\0"
.balign 4
_Lt_0452:	.ascii	"moveburn\0"
.balign 4
_Lt_0457:	.ascii	"Sleepy dust\0"
.balign 4
_Lt_0462:	.ascii	"Cactus\0"
.balign 4
_Lt_0467:	.ascii	"bitekick\0"
.balign 4
_Lt_04C2:	.ascii	" EXP\0"
.balign 4
_Lt_04FF:	.ascii	"\372Ok\0"
.balign 4
_Lt_0506:	.ascii	"&H0D\0"
.balign 4
_Lt_050B:	.ascii	"%%\0"
.balign 4
_Lt_0524:	.ascii	"pndxspdrgrmldtbyemgdshktimp_\0"
.balign 4
_Lt_05A5:	.ascii	"pwchchst\0"
.balign 4
_Lt_05E3:	.ascii	"bldrchst\0"
.balign 4
_Lt_0600:	.ascii	"pndxgrmlspdrdtbyweb_emgdshkt\0"
.balign 4
_Lt_060E:	.ascii	"pndxgrmlspdrdtbyweb_shktemgd\0"
.balign 4
_Lt_0615:	.ascii	"pndxgrmlspdrshktemgdimp_\0"
.balign 4
_Lt_061C:	.ascii	"pndxgrmlspdrdtbyweb_imp_\0"
.balign 4
_Lt_0641:	.ascii	"pndxdtbyspdrimp_emgdshktgrml\0"
.balign 4
_Lt_0650:	.ascii	"pndxgrmldtbyweb_shktemgdimp_\0"
.balign 4
_Lt_0659:	.ascii	"pndxgrmlspdrimp_emgdshkt\0"
.balign 4
_Lt_066A:	.ascii	"pndxdtbyspdrimp_emgdshktweb_\0"
.balign 4
_Lt_067D:	.ascii	"pndxdtbyspdrimp_emgdshktweb_grmlccts\0"
.balign 4
_Lt_06AA:	.ascii	"stpw\0"
.balign 4
_Lt_06AD:	.ascii	"stps\0"
.balign 4
_Lt_06B6:	.ascii	"dirt\0"
.balign 4
_Lt_06BD:	.ascii	"\377""\0"
.balign 4
_Lt_06C0:	.ascii	"&HFF\0"
.balign 4
_Lt_06C1:	.ascii	"0\0"
.balign 4
_Lt_06C6:	.ascii	"&H\0"
.balign 4
_Lt_06CF:	.ascii	"%\0"
.balign 4
_Lt_06DE:	.ascii	".\0"
.balign 4
_Lt_06E7:	.ascii	"________.24\0"
.balign 4
_Lt_06EA:	.ascii	"y\0"
.balign 4
_Lt_06EC:	.ascii	"x\0"
.balign 4
_Lt_0732:	.ascii	"bttnself.24\0"
.balign 4
_Lt_0737:	.ascii	"bttnnrth.24\0"
.balign 4
_Lt_073C:	.ascii	"bttneast.24\0"
.balign 4
_Lt_0741:	.ascii	"bttnsuth.24\0"
.balign 4
_Lt_0746:	.ascii	"bttnwest.24\0"
.balign 4
_Lt_0766:	.ascii	"Puzzlum\0"
.balign 4
_Lt_076A:	.ascii	"(T)itle\0"
.balign 4
_Lt_077F:	.ascii	"&HFF0D\0"
.balign 4
_Lt_0783:	.ascii	"Loading Map\0"
.balign 4
_Lt_0784:	.ascii	"mapname_str\0"
.balign 4
_Lt_078A:	.ascii	"AA_si\0"
.balign 4
_Lt_078C:	.ascii	"DD_si\0"
.balign 4
_Lt_0796:	.ascii	"d_sia[\0"
.balign 4
_Lt_0797:	.ascii	"][\0"
.balign 4
_Lt_0798:	.ascii	"]\0"
.balign 4
_Lt_079E:	.ascii	"ex_si\0"
.balign 4
_Lt_07A0:	.ascii	"dy_si\0"
.balign 4
_Lt_07A2:	.ascii	"mdx_si\0"
.balign 4
_Lt_07A4:	.ascii	"mdy_si\0"
.balign 4
_Lt_07A6:	.ascii	"textcolor_si\0"
.balign 4
_Lt_07A8:	.ascii	"textdelay_sf\0"
.balign 4
_Lt_07AA:	.ascii	"win_si\0"
.balign 4
_Lt_07C2:	.ascii	"win_sia[\0"
.balign 4
_Lt_07D0:	.ascii	"l_sia[\0"
.balign 4
_Lt_07D4:	.ascii	"ctrl_str\0"
.balign 4
_Lt_07E0:	.ascii	"prflidty_str[\0"
.balign 4
_Lt_07E6:	.ascii	"prflactn_str[\0"
.balign 4
_Lt_07EC:	.ascii	"prflgpic_str[\0"
.balign 4
_Lt_07F2:	.ascii	"prflcmnd_str[\0"
.balign 4
_Lt_07F8:	.ascii	"prflgpicactn_str[\0"
.balign 4
_Lt_07FE:	.ascii	"prflactnct_str[\0"
.balign 4
_Lt_0804:	.ascii	"prflidty_sf[\0"
.balign 4
_Lt_080A:	.ascii	"prflhp_sf[\0"
.balign 4
_Lt_0810:	.ascii	"prflstr_sf[\0"
.balign 4
_Lt_0816:	.ascii	"prfless_sf[\0"
.balign 4
_Lt_081C:	.ascii	"prflspd_sf[\0"
.balign 4
_Lt_0822:	.ascii	"prflarmr_sf[\0"
.balign 4
_Lt_0828:	.ascii	"prflexp_sf[\0"
.balign 4
_Lt_082E:	.ascii	"prflvalu_sf[\0"
.balign 4
_Lt_0834:	.ascii	"prflpirc_sf[\0"
.balign 4
_Lt_083A:	.ascii	"prflchck_sf[\0"
.balign 4
_Lt_0840:	.ascii	"prfllv_sf[\0"
.balign 4
_Lt_0846:	.ascii	"prflhpmax_sf[\0"
.balign 4
_Lt_084C:	.ascii	"prflstrmax_sf[\0"
.balign 4
_Lt_0852:	.ascii	"prflessmax_sf[\0"
.balign 4
_Lt_0858:	.ascii	"prflessspd_sf[\0"
.balign 4
_Lt_085E:	.ascii	"prflevad_sf[\0"
.balign 4
_Lt_0864:	.ascii	"prflblnk_sf[\0"
.balign 4
_Lt_086D:	.ascii	"Saving Map \"\0"
.balign 4
_Lt_094D:	.ascii	".\\save\\\0"
.balign 4
_Lt_094E:	.ascii	".dat\0"
