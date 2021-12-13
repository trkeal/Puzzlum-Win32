	.intel_syntax noprefix

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_000D:	.ascii	"\"\0"
.balign 4
_Lt_0010:	.ascii	",\0"

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
_Lt_001F:
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
_.Lt_0022:
.short 1
.int _Lt_0024
.short 1
.int _Lt_0024
.short -1
.int _.Lt_0026
.balign 4
_Lt_0024:	.ascii	"1\0"
.balign 4
_.Lt_0026:
.short 1
.int _Lt_0024
.short 1
.int _Lt_0028
.short -1
.int _.Lt_002A
.balign 4
_Lt_0028:	.ascii	"4\0"
.balign 4
_.Lt_002A:
.short 1
.int _Lt_0024
.short 1
.int _Lt_002C
.short -1
.int _.Lt_002E
.balign 4
_Lt_002C:	.ascii	"8\0"
.balign 4
_.Lt_002E:
.short 1
.int _Lt_0024
.short 2
.int _Lt_0030
.short -1
.int _.Lt_0032
.balign 4
_Lt_0030:	.ascii	"12\0"
.balign 4
_.Lt_0032:
.short 1
.int _Lt_0024
.short 2
.int _Lt_0034
.short -1
.long 0
.balign 4
_Lt_0034:	.ascii	"16\0"
.balign 4
_Lt_0037:	.ascii	".\\\0"
.balign 4
_Lt_0038:	.ascii	"fonts\\\0"
.balign 4
_Lt_0039:	.ascii	"logos\\\0"
.balign 4
_Lt_003A:	.ascii	"sprites\\\0"
.balign 4
_Lt_003B:	.ascii	"pal\\\0"
.balign 4
_Lt_003C:	.ascii	"maps\\\0"
.balign 4
_Lt_003D:	.ascii	"help\\\0"
.balign 4
_Lt_003E:	.ascii	"roe4help.hlp\0"
.balign 4
_Lt_003F:	.ascii	"demo.vds\0"
.balign 4
_Lt_0040:	.ascii	"lvup\\\0"
.balign 4
_Lt_0041:	.ascii	"roe_lvup.dat\0"
.balign 4
_Lt_0042:	.ascii	".\\dict\\input.txt\0"
.balign 4
_Lt_0044:	.ascii	"QBPALVGA.DAT\0"
.balign 4
_Lt_0048:	.ascii	".\\fonts\\mishap22.font.png\0"
.balign 4
_Lt_004A:	.ascii	".\\fonts\\roe00.font.png\0"
.balign 4
_Lt_004C:	.ascii	"[F1 Save|F2 Load|F3 Shop]\0"
.balign 4
_Lt_0055:	.ascii	"t\0"
.balign 4
_Lt_0067:	.ascii	"L ||\0"
.balign 4
_Lt_0068:	.ascii	" \0"
.balign 4
_Lt_006C:	.ascii	"L||\0"
.balign 4
_Lt_0074:	.ascii	".\\dict\\names.txt\0"
.balign 4
_Lt_0083:	.ascii	"pndximp_\0"
.balign 4
_Lt_0086:	.ascii	"dust\0"
.balign 4
_Lt_0091:	.ascii	"____\0"
.balign 4
_Lt_0092:	.ascii	"________\0"
.balign 4
_Lt_0097:	.ascii	"spdr\0"
.balign 4
_Lt_0099:	.ascii	"Spider\0"
.balign 4
_Lt_009A:	.ascii	"movebiteweb_\0"
.balign 4
_Lt_009D:	.ascii	"0001\0"
.balign 4
_Lt_00A1:	.ascii	"vnom\0"
.balign 4
_Lt_00A3:	.ascii	"wall\0"
.balign 4
_Lt_00A6:	.ascii	"web_\0"
.balign 4
_Lt_00A8:	.ascii	"Web\0"
.balign 4
_Lt_00AA:	.ascii	"grml\0"
.balign 4
_Lt_00AC:	.ascii	"Gremlin\0"
.balign 4
_Lt_00AD:	.ascii	"movebitepnch\0"
.balign 4
_Lt_00B0:	.ascii	"dggr\0"
.balign 4
_Lt_00B2:	.ascii	"pndx\0"
.balign 4
_Lt_00B4:	.ascii	"Poindexter\0"
.balign 4
_Lt_00B5:	.ascii	"wstf\0"
.balign 4
_Lt_00B7:	.ascii	"dtby\0"
.balign 4
_Lt_00B9:	.ascii	"Dust Bunny\0"
.balign 4
_Lt_00BA:	.ascii	"movebitekickdtbydust\0"
.balign 4
_Lt_00BC:	.ascii	"shkt\0"
.balign 4
_Lt_00BE:	.ascii	"Shiny Knight\0"
.balign 4
_Lt_00BF:	.ascii	"movepnchdggr\0"
.balign 4
_Lt_00C1:	.ascii	"emgd\0"
.balign 4
_Lt_00C3:	.ascii	"Emerald Guard\0"
.balign 4
_Lt_00C8:	.ascii	"pike\0"
.balign 4
_Lt_00CA:	.ascii	"door\0"
.balign 4
_Lt_00CC:	.ascii	"Door\0"
.balign 4
_Lt_00D0:	.ascii	"loc1\0"
.balign 4
_Lt_00D3:	.ascii	"loc2\0"
.balign 4
_Lt_00D6:	.ascii	"loc3\0"
.balign 4
_Lt_00D8:	.ascii	"imp_\0"
.balign 4
_Lt_00DA:	.ascii	"Little Imp\0"
.balign 4
_Lt_00DB:	.ascii	"movewingfire\0"
.balign 4
_Lt_00DE:	.ascii	"Merchant\0"
.balign 4
_Lt_00DF:	.ascii	"dggrgrplseed\0"
.balign 4
_Lt_00E4:	.ascii	"chst\0"
.balign 4
_Lt_00E6:	.ascii	"Treasure chest\0"
.balign 4
_Lt_00E9:	.ascii	"key1\0"
.balign 4
_Lt_00EA:	.ascii	"key2\0"
.balign 4
_Lt_00EC:	.ascii	"bldr\0"
.balign 4
_Lt_00EE:	.ascii	"Big boulder\0"
.balign 4
_Lt_00F4:	.ascii	"Puzzlum : Realm of Existence\0"
.balign 4
_Lt_00F5:	.ascii	"Build: puzzlum-fbc068.200908170813\0"
.balign 4
_Lt_00F6:	.ascii	"Created 1989-2009 Timothy Robert Keal\0"
.balign 4
_Lt_00F7:	.ascii	"Released under Gnu Public License 2.0\0"
.balign 4
_Lt_00F8:	.ascii	"http://www.gnu.org/copyleft/gpl.html\0"
.balign 4
_Lt_00F9:	.ascii	"http://puzzlum.retromachineshop.com/\0"
.balign 4
_Lt_00FA:	.ascii	"irc://chat.freenode.net/puzzlum\0"
.balign 4
_Lt_00FB:	.ascii	"mailto:jargon@juno.com\0"
.balign 4
_Lt_00FC:	.ascii	" (H)elp\0"
.balign 4
_Lt_00FD:	.ascii	" (C)ontinue\0"
.balign 4
_Lt_00FE:	.ascii	" (R)estart\0"
.balign 4
_Lt_00FF:	.ascii	" (Q)uit\0"
.balign 4
_Lt_0100:	.ascii	"r\0"
.balign 4
_Lt_0101:	.ascii	"R\0"
.balign 4
_Lt_0104:	.ascii	"q\0"
.balign 4
_Lt_0105:	.ascii	"Q\0"
.balign 4
_Lt_0108:	.ascii	"h\0"
.balign 4
_Lt_0109:	.ascii	"H\0"
.balign 4
_Lt_010C:	.ascii	"c\0"
.balign 4
_Lt_010D:	.ascii	"C\0"
.balign 4
_Lt_0114:	.ascii	"\376 page start\0"
.balign 4
_Lt_0117:	.ascii	"\376 page end\0"
.balign 4
_Lt_011A:	.ascii	" (T)itle\0"
.balign 4
_Lt_011E:	.ascii	"T\0"
.balign 4
_Lt_0121:	.ascii	"\376 end\0"
.balign 4
_Lt_0124:	.ascii	"\376 COLOR\0"
.balign 4
_Lt_0139:	.ascii	"zzzz\0"
.balign 4
_Lt_014F:	.ascii	"fire\0"
.balign 4
_Lt_0154:	.ascii	"ccts\0"
.balign 4
_Lt_016C:	.ascii	"0002\0"
.balign 4
_Lt_0173:	.ascii	"&HFF3B\0"
.balign 4
_Lt_0176:	.ascii	"&HFF3C\0"
.balign 4
_Lt_017A:	.ascii	"&HFF3D\0"
.balign 4
_Lt_017D:	.ascii	"L\0"
.balign 4
_Lt_0180:	.ascii	"&H20\0"
.balign 4
_Lt_0183:	.ascii	"&HFF48\0"
.balign 4
_Lt_0186:	.ascii	"&HFF4D\0"
.balign 4
_Lt_0189:	.ascii	"&HFF50\0"
.balign 4
_Lt_018C:	.ascii	"&HFF4B\0"
.balign 4
_Lt_01A2:	.ascii	"||\0"
.balign 4
_Lt_01B0:	.ascii	"&HFF47\0"
.balign 4
_Lt_01B3:	.ascii	"&HFF4F\0"
.balign 4
_Lt_01B6:	.ascii	"&HFF49\0"
.balign 4
_Lt_01BB:	.ascii	"&HFF51\0"
.balign 4
_Lt_01E6:	.ascii	"bite\0"
.balign 4
_Lt_01E9:	.ascii	"pnch\0"
.balign 4
_Lt_01EC:	.ascii	"kick\0"
.balign 4
_Lt_01F5:	.ascii	"cure\0"
.balign 4
_Lt_0214:	.ascii	"burn\0"
.balign 4
_Lt_021D:	.ascii	"tngl\0"
.balign 4
_Lt_0220:	.ascii	"lash\0"
.balign 4
_Lt_0233:	.ascii	"slep\0"
.balign 4
_Lt_023E:	.ascii	"pouch\0"
.balign 4
_Lt_023F:	.ascii	"pwch\0"
.balign 4
_Lt_0247:	.ascii	"lvup\0"
.balign 4
_Lt_024E:	.ascii	"ispt\0"
.balign 4
_Lt_0255:	.ascii	"move\0"
.balign 4
_Lt_0278:	.ascii	"cncl\0"
.balign 4
_Lt_0282:	.ascii	"\372\0"
.balign 4
_Lt_0283:	.ascii	"-\0"
.balign 4
_Lt_0284:	.ascii	"----\0"
.balign 4
_Lt_0285:	.ascii	"$\0"
.balign 4
_Lt_02AF:	.ascii	"grpl\0"
.balign 4
_Lt_02B4:	.ascii	"seed\0"
.balign 4
_Lt_02C0:	.ascii	"Wha'du like?\0"
.balign 4
_Lt_02C4:	.ascii	"____.24\0"
.balign 4
_Lt_02EE:	.ascii	"bye_\0"
.balign 4
_Lt_02F1:	.ascii	"Poindexter:\0"
.balign 4
_Lt_02F3:	.ascii	"Hi. How are you. My\0"
.balign 4
_Lt_02F5:	.ascii	"name is Poindexter. I\0"
.balign 4
_Lt_02F7:	.ascii	"am the greatest thief\0"
.balign 4
_Lt_02F9:	.ascii	"in the entire world!!!\0"
.balign 4
_Lt_0306:	.ascii	" =\0"
.balign 4
_Lt_031F:	.ascii	"gained\0"
.balign 4
_Lt_0329:	.ascii	"      level up!\0"
.balign 4
_Lt_032B:	.ascii	"HPmax +\0"
.balign 4
_Lt_032F:	.ascii	"STRmax +\0"
.balign 4
_Lt_0333:	.ascii	"ESSmax +\0"
.balign 4
_Lt_0337:	.ascii	"STRspd up!\0"
.balign 4
_Lt_0339:	.ascii	"ESSspd up!\0"
.balign 4
_Lt_033F:	.ascii	"reached LV!\0"
.balign 4
_Lt_0345:	.ascii	"next:\0"
.balign 4
_Lt_035C:	.ascii	"from\0"
.balign 4
_Lt_035E:	.ascii	"!\0"
.balign 4
_Lt_0365:	.ascii	"used\0"
.balign 4
_Lt_0367:	.ascii	"on\0"
.balign 4
_Lt_036E:	.ascii	"HP -\0"
.balign 4
_Lt_0372:	.ascii	"STR-\0"
.balign 4
_Lt_037A:	.ascii	"pillaged\0"
.balign 4
_Lt_037C:	.ascii	"EXP+\0"
.balign 4
_Lt_0381:	.ascii	"EXP:\0"
.balign 4
_Lt_0386:	.ascii	"STR+\0"
.balign 4
_Lt_038A:	.ascii	"STR:\0"
.balign 4
_Lt_03B4:	.ascii	".24\0"
.balign 4
_Lt_03D4:	.ascii	"zzzz____.24\0"
.balign 4
_Lt_03E0:	.ascii	"rapl\0"
.balign 4
_Lt_03F5:	.ascii	"A RetroMachineShop Featured Project!\0"
.balign 4
_Lt_03FF:	.ascii	"LV\0"
.balign 4
_Lt_0402:	.ascii	"     \0"
.balign 4
_Lt_0407:	.ascii	"HP\0"
.balign 4
_Lt_040A:	.ascii	"/\0"
.balign 4
_Lt_040D:	.ascii	"STR\0"
.balign 4
_Lt_0412:	.ascii	"ESS\0"
.balign 4
_Lt_041D:	.ascii	"____pwch\0"
.balign 4
_Lt_0420:	.ascii	"watr\0"
.balign 4
_Lt_0425:	.ascii	"hole\0"
.balign 4
_Lt_0426:	.ascii	"holestpsstp2\0"
.balign 4
_Lt_044D:	.ascii	"Flame\0"
.balign 4
_Lt_044E:	.ascii	"moveburn\0"
.balign 4
_Lt_0453:	.ascii	"Sleepy dust\0"
.balign 4
_Lt_045E:	.ascii	"Cactus\0"
.balign 4
_Lt_0463:	.ascii	"bitekick\0"
.balign 4
_Lt_04BE:	.ascii	" EXP\0"
.balign 4
_Lt_04FB:	.ascii	"\372Ok\0"
.balign 4
_Lt_0502:	.ascii	"&H0D\0"
.balign 4
_Lt_0507:	.ascii	"%%\0"
.balign 4
_Lt_0520:	.ascii	"pndxspdrgrmldtbyemgdshktimp_\0"
.balign 4
_Lt_05A1:	.ascii	"pwchchst\0"
.balign 4
_Lt_05DF:	.ascii	"bldrchst\0"
.balign 4
_Lt_05FC:	.ascii	"pndxgrmlspdrdtbyweb_emgdshkt\0"
.balign 4
_Lt_060A:	.ascii	"pndxgrmlspdrdtbyweb_shktemgd\0"
.balign 4
_Lt_0611:	.ascii	"pndxgrmlspdrshktemgdimp_\0"
.balign 4
_Lt_0618:	.ascii	"pndxgrmlspdrdtbyweb_imp_\0"
.balign 4
_Lt_063D:	.ascii	"pndxdtbyspdrimp_emgdshktgrml\0"
.balign 4
_Lt_064C:	.ascii	"pndxgrmldtbyweb_shktemgdimp_\0"
.balign 4
_Lt_0655:	.ascii	"pndxgrmlspdrimp_emgdshkt\0"
.balign 4
_Lt_0666:	.ascii	"pndxdtbyspdrimp_emgdshktweb_\0"
.balign 4
_Lt_0679:	.ascii	"pndxdtbyspdrimp_emgdshktweb_grmlccts\0"
.balign 4
_Lt_06A6:	.ascii	"stpw\0"
.balign 4
_Lt_06A9:	.ascii	"stps\0"
.balign 4
_Lt_06B2:	.ascii	"dirt\0"
.balign 4
_Lt_06B9:	.ascii	"\377""\0"
.balign 4
_Lt_06BC:	.ascii	"&HFF\0"
.balign 4
_Lt_06BD:	.ascii	"0\0"
.balign 4
_Lt_06C2:	.ascii	"&H\0"
.balign 4
_Lt_06CB:	.ascii	"%\0"
.balign 4
_Lt_06DA:	.ascii	".\0"
.balign 4
_Lt_06E3:	.ascii	"________.24\0"
.balign 4
_Lt_06E6:	.ascii	"y\0"
.balign 4
_Lt_06E8:	.ascii	"x\0"
.balign 4
_Lt_072E:	.ascii	"bttnself.24\0"
.balign 4
_Lt_0733:	.ascii	"bttnnrth.24\0"
.balign 4
_Lt_0738:	.ascii	"bttneast.24\0"
.balign 4
_Lt_073D:	.ascii	"bttnsuth.24\0"
.balign 4
_Lt_0742:	.ascii	"bttnwest.24\0"
.balign 4
_Lt_0762:	.ascii	"Puzzlum\0"
.balign 4
_Lt_0766:	.ascii	"(T)itle\0"
.balign 4
_Lt_077B:	.ascii	"&HFF0D\0"
.balign 4
_Lt_077F:	.ascii	"Loading Map\0"
.balign 4
_Lt_0780:	.ascii	"mapname_str\0"
.balign 4
_Lt_0786:	.ascii	"AA_si\0"
.balign 4
_Lt_0788:	.ascii	"DD_si\0"
.balign 4
_Lt_0792:	.ascii	"d_sia[\0"
.balign 4
_Lt_0793:	.ascii	"][\0"
.balign 4
_Lt_0794:	.ascii	"]\0"
.balign 4
_Lt_079A:	.ascii	"ex_si\0"
.balign 4
_Lt_079C:	.ascii	"dy_si\0"
.balign 4
_Lt_079E:	.ascii	"mdx_si\0"
.balign 4
_Lt_07A0:	.ascii	"mdy_si\0"
.balign 4
_Lt_07A2:	.ascii	"textcolor_si\0"
.balign 4
_Lt_07A4:	.ascii	"textdelay_sf\0"
.balign 4
_Lt_07A6:	.ascii	"win_si\0"
.balign 4
_Lt_07BE:	.ascii	"win_sia[\0"
.balign 4
_Lt_07CC:	.ascii	"l_sia[\0"
.balign 4
_Lt_07D0:	.ascii	"ctrl_str\0"
.balign 4
_Lt_07DC:	.ascii	"prflidty_str[\0"
.balign 4
_Lt_07E2:	.ascii	"prflactn_str[\0"
.balign 4
_Lt_07E8:	.ascii	"prflgpic_str[\0"
.balign 4
_Lt_07EE:	.ascii	"prflcmnd_str[\0"
.balign 4
_Lt_07F4:	.ascii	"prflgpicactn_str[\0"
.balign 4
_Lt_07FA:	.ascii	"prflactnct_str[\0"
.balign 4
_Lt_0800:	.ascii	"prflidty_sf[\0"
.balign 4
_Lt_0806:	.ascii	"prflhp_sf[\0"
.balign 4
_Lt_080C:	.ascii	"prflstr_sf[\0"
.balign 4
_Lt_0812:	.ascii	"prfless_sf[\0"
.balign 4
_Lt_0818:	.ascii	"prflspd_sf[\0"
.balign 4
_Lt_081E:	.ascii	"prflarmr_sf[\0"
.balign 4
_Lt_0824:	.ascii	"prflexp_sf[\0"
.balign 4
_Lt_082A:	.ascii	"prflvalu_sf[\0"
.balign 4
_Lt_0830:	.ascii	"prflpirc_sf[\0"
.balign 4
_Lt_0836:	.ascii	"prflchck_sf[\0"
.balign 4
_Lt_083C:	.ascii	"prfllv_sf[\0"
.balign 4
_Lt_0842:	.ascii	"prflhpmax_sf[\0"
.balign 4
_Lt_0848:	.ascii	"prflstrmax_sf[\0"
.balign 4
_Lt_084E:	.ascii	"prflessmax_sf[\0"
.balign 4
_Lt_0854:	.ascii	"prflessspd_sf[\0"
.balign 4
_Lt_085A:	.ascii	"prflevad_sf[\0"
.balign 4
_Lt_0860:	.ascii	"prflblnk_sf[\0"
.balign 4
_Lt_0869:	.ascii	"Saving Map \"\0"
.balign 4
_Lt_0949:	.ascii	".\\save\\\0"
.balign 4
_Lt_094A:	.ascii	".dat\0"
