#define puzzlum_subs_lib

'puzzlum-subs.bas
'
'Puzzlum is Copyright (C) 1997, 2010, 2021, 2022 Timothy Robert Keal
'Released by Timothy Robert Keal under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'http://puzzlum.net/
'mailto:trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====
	#inclib "puzzlum-common"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once ".\inc\central-debug.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\puzzlum-outro.bi"

	#include once ".\inc\CLV.bi"

	#include once ".\inc\puzzlum-subs.bi"
	#include once ".\inc\puzzlum-vars.bi"
	#include once ".\inc\puzzlum-maps.bi"

	#include once ".\inc\puzzlum-test.bi"

	#include once ".\inc\puzzlum-map-viewer.bi"
	#include once ".\inc\puzzlum-profile-manip.bi"

	'dim shared as integer Central_Count = 0

	'redim shared debug_table( any ) as names_type



sub ln_command()
    
	clv_buffer_focus=clv_buffer_portal
    Tx_si = ex_si
    Ty_si = dy_si
    
	clv_buffer_cls clv_buffer(), clv_buffer_draw
    central "portal"
    
	clv_buffer_stack clv_buffer()
    central "command2"
	
    Exit Sub
end sub

sub ln_command2()
    clv_buffer_cls clv_buffer(), clv_buffer_menu

    frame_title 2, 24
    
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        clv_buffer_focus=clv_buffer_status
        statx_si = 24
        central "status"
    END IF
    Exit Sub
end sub

sub ln_command3()
    dim as string filename = string$( 0, 0 )
	filename = "0002"
	redim Names_Table(0 to 0):Names_Table(0).label = "":Names_Table(0).value = ""
    redim as string dump(0,0)
    dim as short X, Y, Z
    dim as string ActnNav(0 to 4)
    cinput
    IF ym_si = 2 AND xm_si >= 24 AND xm_si <= 24+7-1 THEN
        titled_si = 1
        central "command2"
    else
        titled_si = 0
        central "command2"
    END IF
    cursorput
    'netscreenout
    clv_buffer_stack clv_buffer()
    
	select case not(0)
	case Compare_Key( c_str, "Function 1", Input_Table())
    'case "&HFF3B" 'F1 (save savegame)
		
		savegame_save sync_names( "save/file", Bundle_Table() )

        c_str="t"
        central "starttitle"
        exitcommand3=not(0)
        Exit Sub
	case Compare_Key( c_str, "Function 2", Input_Table())
    'case "&HFF3C" 'F2 (load savegame)
		
		savegame_load sync_names( "save/file", Bundle_Table() )
        
		c_str="t"
        central "starttitle"
        exitcommand3=not(0)
        Exit Sub
    end select
    IF am_si > 0 THEN
        statx_si = 24
        central "getaction"
        IF (Compare_Key( c_str, "Shop", Input_Table() )) OR (((ym_si = 5) AND (xm_si=26) AND (Lb_si=-1))) THEN 'F3
            c_str = "L"
            central "paylevelup"
            exitcommand3=not(0)
            Exit Sub
        END IF
        select case c_str
        case "&H20" 'Space
            d_si = 0
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        case "&HFF48" 'Up
            d_si = 1
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        case "&HFF4D" 'Right
            d_si = 2
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        case "&HFF50" 'Down
            d_si = 3
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        case "&HFF4B" 'Left
            d_si = 4
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        end select
        IF ((ym_si=10) AND (xm_si=statx_si+1) AND (Lb_si=-1)) AND not(d_si=0) THEN
            d_si = 0
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        IF ((ym_si=9) AND (xm_si=statx_si+1) AND (Lb_si=-1)) AND not(d_si=1) THEN
            d_si = 1
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        IF ((ym_si=10) AND (xm_si=statx_si+2) AND (Lb_si=-1)) AND not(d_si=2) THEN
            d_si = 2
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        IF ((ym_si=11) AND (xm_si=statx_si+1) AND (Lb_si=-1)) AND not(d_si=3) THEN
            d_si = 3
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        IF ((ym_si = 10) AND (xm_si=statx_si) AND (Lb_si=-1)) AND not(d_si=4) THEN
            d_si = 4
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        if not ((action_str="zzzz") AND (dis_si>0)) then
            if (Lb_si=-1) then
                IF (xm_si>=statx_si) and (xm_si<=statx_si+5*3-1) and (ym_si>=14) and (ym_si<=23) THEN
                    X=fix((xm_si-statx_si)/3)
                    Y=fix((ym_si-14)/3)
                    Z=1+X+Y*5
                    if (Z>=1) and (Z<=LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1))/4) then
                        AA_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (Z*4)-3, 4)
                        IF action_str <> AA_str THEN
                            action_str = AA_str
                        ELSE
                            action_str = "____"
                        END IF
                        c_str = "||"
                        'exitcommand3=not(0)
                    END IF
                END IF
            else
                ActnNav(0)=action_str
                ActnNav(1)=mkl(0)
                ActnNav(2)=e_stra(Rose_Calc( Tx_si, Ty_si ), 1)
                ActnNav(3)=mkl(len(ActnNav(2))/4)
                if cvl(ActnNav(3))>0 then
                    for Z=1 to cvl(ActnNav(3))
                        AA_str=MID(ActnNav(2), (Z*4)-3, 4)
                        if AA_str = ActnNav(0) THEN
                            ActnNav(1)=mkl(Z)
                            Z=cvl(ActnNav(3))+1
                        end if
                    next
                    if cvl(ActnNav(1))>0 then
                        select case c_str
                        case "&HFF47" 'Home
                            ActnNav(1)=mkl(5*fix((cvl(ActnNav(1))-1)/5)+((cvl(ActnNav(1))+9-1) mod 5)+1)
                        case "&HFF4F" 'End
                            ActnNav(1)=mkl(5*fix((cvl(ActnNav(1))-1)/5)+((cvl(ActnNav(1))+9+1) mod 5)+1)
                        case "&HFF49" 'Page Up
                            ActnNav(1)=mkl(cvl(ActnNav(1))-5)
                            if cvl(ActnNav(1))<1 then
                                ActnNav(1)=mkl(cvl(ActnNav(1))+cvl(ActnNav(3)))
                            end if
                        case "&HFF51" 'Page Down
                            ActnNav(1)=mkl(cvl(ActnNav(1))+5)
                            if cvl(ActnNav(1))>cvl(ActnNav(3)) then                        
                                ActnNav(1)=mkl(cvl(ActnNav(1))-cvl(ActnNav(3)))                    
                            end if
                        end select
                        action_str=mid(ActnNav(2),cvl(ActnNav(1))*4-3,4)
                    end if
                end if
            end if
        end if
        central "putaction"
        st_sf = TIMER
    END IF
    statx_si = 24
    IF (Compare_Key( c_str, "Title", Input_Table() )) OR ((ym_si = 2) AND (xm_si>=statx_si) AND (xm_si<=statx_si+7-1) AND Lb_si = -1) THEN
        central "starttitle"
        Exit Sub
    END IF
    IF (Lb_si=-1) and (ym_si>=2) and (ym_si<=2+7*3-1) THEN
        IF (xm_si>=2) AND (xm_si<=2+7*3-1) THEN
            tempy_si=fix((ym_si-2)/3)-3+dy_si
            tempx_si=fix((xm_si-2)/3)-3+ex_si
            dy_si=tempy_si
            ex_si=tempx_si
            c_str="||"
        END IF
    END IF
    SELECT CASE ex_si
    CASE IS < 1
        ex_si = 1
    CASE IS > AA_si
        ex_si = AA_si
    END SELECT
    SELECT CASE dy_si
    CASE IS < 1
        dy_si = 1
    CASE IS > DD_si
        dy_si = DD_si
    END SELECT
    IF Rb_si = -1 THEN
        c_str = " "
    END IF
end sub   

sub ln_swapdata()
    FOR t_si = 0 TO 1
        SWAP e_stra(Rose_Calc( Tx_si, Ty_si ), t_si), e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, t_si)
    NEXT t_si
    temp1_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4)
    temp2_str = MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4)
    SWAP temp1_str, temp2_str
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) = temp1_str
    MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) = temp2_str
    FOR t_si = 3 TO 4
        SWAP e_stra(Rose_Calc( Tx_si, Ty_si ), t_si), e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, t_si)
    NEXT t_si
    FOR t_si = 0 TO 16
        SWAP G_dfa(Rose_Calc( Tx_si, Ty_si ), t_si), G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, t_si)
    NEXT t_si
    Exit Sub
end sub

sub ln_attack()
    
	dim as string attk = string$( 0,0 )
	
	attk = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4)
	
	select case sync_names( "attk/"+cleantag( MID( e_stra( Rose_Calc( Tx_si, Ty_si ), 3 ), 5, 4 ) )+"/valid", Attack_Table() )
	
	case "%%"
		MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
		MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
	case else
		central "attk_table", attk
	end select
	
	'''central "attk" + CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4)
	
	#ifdef __old__
	'SELECT CASE CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4))
    'CASE CVL("bite")
    '    central "attk"+"bite"
    'CASE CVL("pnch")
    '    central "attk"+"pnch"
    'CASE CVL("kick")
    '    central "attk"+"kick"
    'CASE CVL("vnom")
    '    central "attk"+"vnom"
    'CASE CVL("dggr")
    '    central "attk"+"dggr"
    'CASE CVL("pike")
    '    central "attk"+"pike"
    'CASE CVL("cure")
    '    central "use"+"cure"
    'CASE CVL("fire")
    '    central "attk"+"fire"
    'CASE ELSE
    '    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
    '    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
    'END SELECT
	#endif
	
    Exit Sub
end sub

sub ln_battle()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) >= str_use_si AND G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= ess_use_si THEN
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = attk_pict_str
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = attk_name_str
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - str_use_si
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - ess_use_si
            evadeattack = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 15)
            evadeattack = evadeattack + RND(1) * (1 - evadeattack)
            attackblocked = hp_dmg_si * (evadeattack) - G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 5)
            IF attackblocked < 0 THEN attackblocked = 0
            hp_dmg_si = hp_dmg_si * (1 - evadeattack) + attackblocked
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) - hp_dmg_si
            central "battleattack"
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) <= 0 THEN
                central "victory"
            END IF
        END IF
    ELSE
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
    END IF
    Exit Sub
end sub

sub ln_attkbite()
    attk_pict_str = "bite"
    attk_name_str = "bite"
    str_use_si = 10
    ess_use_si = 0
    hp_dmg_si = 5 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    str_dmg_si = 2
    central "battle"
    Exit Sub
end sub

sub ln_attkpnch()
    attk_pict_str = "pnch"
    attk_name_str = "pnch"
    str_use_si = 12
    ess_use_si = 0
    hp_dmg_si = 3 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 6)
    str_dmg_si = 2 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 8)
    central "battle"
    Exit Sub
end sub

sub ln_attkwstf()
    attk_pict_str = "wstf"
    attk_name_str = "wstf"
    str_use_si = 20
    ess_use_si = 0
    hp_dmg_si = 5 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    str_dmg_si = 4 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 6)
    central "battle"
    Exit Sub
end sub

sub ln_attkkick()
    attk_pict_str = "kick"
    attk_name_str = "kick"
    str_use_si = 14
    ess_use_si = 0
    hp_dmg_si = 4 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 5)
    str_dmg_si = 3 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 7)
    central "battle"
    Exit Sub
end sub

sub ln_attkvnom()
    attk_pict_str = "vnom"
    attk_name_str = "vnom"
    str_use_si = 0
    ess_use_si = 15
    hp_dmg_si = 7 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    str_dmg_si = 10 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    central "battle"
    Exit Sub
end sub

sub ln_attkdggr()
    attk_pict_str = "dggr"
    attk_name_str = "dggr"
    str_use_si = 18
    ess_use_si = 0
    hp_dmg_si = 8 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    str_dmg_si = 1 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 10)
    central "battle"
    Exit Sub
end sub

sub ln_attkpike()
    attk_pict_str = "pike"
    attk_name_str = "pike"
    str_use_si = 24
    ess_use_si = 0
    hp_dmg_si = 12 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 3)
    str_dmg_si = 8 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 5)
    central "battle"
    Exit Sub
end sub

sub ln_attkburn()
    attk_pict_str = "____"
    attk_name_str = "burn"
    str_use_si = 5
    ess_use_si = 5
    hp_dmg_si = 12 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 2)
    str_dmg_si = 15 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    central "battle"
    IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) = "fire" THEN
        central "gone"
    END IF
    Exit Sub
end sub

sub ln_attkfire()
    attk_pict_str = "____"
    attk_name_str = "fire"
    str_use_si = 5
    ess_use_si = 20
    hp_dmg_si = 15 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 2)
    str_dmg_si = 20 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    central "battle"
    Exit Sub
end sub

sub ln_attkweb()
    attk_pict_str = "____"
    attk_name_str = "web_"
    str_use_si = 22
    ess_use_si = 0
    hp_dmg_si = 0
    str_dmg_si = 15 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 5)
    central "battle"
    Exit Sub
end sub

sub ln_attktngl()
    attk_pict_str = "____"
    attk_name_str = "tngl"
    str_use_si = 0
    ess_use_si = 0
    hp_dmg_si = 0
    str_dmg_si = 10 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 6)
    central "battle"
    Exit Sub
end sub

sub ln_attklash()    
	attk_pict_str = "____"
    attk_name_str = "lash"
    str_use_si = 0
    ess_use_si = 0
    hp_dmg_si = 5 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 5)
    str_dmg_si = 8 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 7)
    central "battle"
    Exit Sub
end sub

sub ln_attk_table( attk as string = "%%" )
	
	select case attk
	case "%%"
		exit sub
	case "____"
		exit sub
	case string$( 0, 0 )
		exit sub
	end select
	
	dim as integer level = G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)
	dim as integer bonus = 0
	
	attk_pict_str = sync_names( "attk/"+attk+"/pict", Attack_Table())
	attk_name_str = sync_names( "attk/"+attk+"/name", Attack_Table())
	
	hp_use_si = val(sync_names( "attk/"+attk+"/hp/use", Attack_Table()))
	str_use_si = val(sync_names( "attk/"+attk+"/str/use", Attack_Table()))
	ess_use_si = val(sync_names( "attk/"+attk+"/ess/use", Attack_Table()))
	
	hp_dmg_si = val(sync_names( "attk/"+attk+"/hp/dmg", Attack_Table()))
	str_dmg_si = val(sync_names( "attk/"+attk+"/str/dmg", Attack_Table()))
	ess_dmg_si = val(sync_names( "attk/"+attk+"/ess/dmg", Attack_Table()))
	
	hp_dmg_bonus_str = sync_names( "attk/"+attk+"/hp/dmg/bonus", Attack_Table())
	str_dmg_bonus_str = sync_names( "attk/"+attk+"/str/dmg/bonus", Attack_Table())
	ess_dmg_bonus_str = sync_names( "attk/"+attk+"/ess/dmg/bonus", Attack_Table())
	
	bonus = 0
	select case not( 0 )
	case left$(hp_dmg_bonus_str,len("Level/"))="Level/"
		bonus = val(mid$(hp_dmg_bonus_str,len("Level/")+1))
	end select
	select case not( 0 )
	case bonus > 0
		hp_dmg_si += level / bonus
	end select
	
	bonus = 0
	select case not( 0 )
	case left$(str_dmg_bonus_str,len("Level/"))="Level/"
		bonus = val(mid$(str_dmg_bonus_str,len("Level/")+1))
	end select
	select case not( 0 )
	case bonus > 0
		str_dmg_si += level / bonus
	end select
	
	bonus = 0
	select case not( 0 )
	case left$(ess_dmg_bonus_str,len("Level/"))="Level/"
		bonus = val(mid$(ess_dmg_bonus_str,len("Level/")+1))
	end select
	select case not( 0 )
	case bonus > 0
		ess_dmg_si += level / bonus
	end select
	
    central "battle"
	
	entity_count = val( sync_names( "attk/"+attk+"/entity/count", Attack_Table()) )
	
	For entity_index = 1 to entity_count step 1
		Select Case sync_names( "attk/"+attk+"/entity/"+LTrim$(Str$(entity_index))+"/is", Attack_Table())
		Case Mid$(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4)
			Select Case sync_names( "attk/"+attk+"/entity/"+LTrim$(Str$(entity_index))+"/now", Attack_Table())
			Case "gone"
				central_call "gone"
				Exit Sub
			End Select
		End Select
    Next entity_index
	
	Exit Sub
	
End Sub


sub ln_usecure()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 8 THEN
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "cure"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "cure"
            AA_str = "cure"
            central "attackusing"
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 8
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) + 12 + G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) + 15 + G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) <= 0 THEN
                G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = 0
            END IF
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) <= 0 THEN
                central "victory"
            END IF
        END IF
    ELSE
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
        END IF
    END IF
    Exit Sub
end sub

sub ln_useslep()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 8 THEN
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "slep"
            AA_str = "slep"
            central "attackusing"
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 8
            MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 4), 1, 4) = "____"
            MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 4), 5, 4) = "zzzz"
            slepadd_si = INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 10)
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = Tx_si + d_sia(d_si, 1) * dis_si
            Ty_si = Ty_si + d_sia(d_si, 2) * dis_si
            central "tempget"
            IF tempaction_str <> "zzzz" THEN
                tempaction_str = "zzzz"
                tempdis_si = 5 + INT(RND(1) * 6) + slepadd_si
                central "tempput"
            END IF
            Tx_si = temptx_si
            Ty_si = tempty_si
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) - 15
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) <= 0 THEN
                G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = 0
            END IF
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) <= 0 THEN
                central "victory"
            END IF
        END IF
    ELSE
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
        END IF
    END IF
    Exit Sub
end sub

sub ln_victory()
    profile_manip "blnk"
    prflidty_str = "pouch"
    prflactn_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    prflgpic_str = "pwch"
    prflhpcur_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    prflstrcur_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2)
    prflesscur_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 3)
    prflexp_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6)
    prflvalu_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 7)
    prfllv_sf = 1
    prflhpmax_sf = 99999
    profile_manip "make"
    Exit Sub
end sub

sub ln_pillage()
    expgain_si = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6)
    expgain_si = expgain_si + G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 7)
    G_dfa(Tx_si + (Ty_si + -1) * AA_si, 6) = G_dfa(Tx_si + (Ty_si + -1) * AA_si, 6) + expgain_si
    strgain_si = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2)
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) + strgain_si
    central "defeated"
    central "windggr"
    central "winpike"
    central "wingrpl"
    central "winseed"
    central "winkey1"
    central "winkey2"
    Exit Sub
end sub

sub ln_paylevelup()
    dim as short X1, Y1, X2, Y2, C1, C2
    dim as short Row, Col
    
    Row=4
    Col=14
    
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        
        clv_buffer_focus=clv_buffer_expshop
        clv_buffer_cls clv_buffer(), clv_buffer_expshop
        
        'central "portal"
        'PCOPY 1, 2
reshow1:
'end sub

'sub ln_reshow1()


        'PCOPY 2, 1
        X1 = Col
        X2 = X1+25
        Y1 = Row
        Y2 = Y1+20
        C1 = 4
        C2 = 12
        frame_put clv_buffer(), clv_buffer_expshop, X1, Y1, X2, Y2, C1, C2
        statx_si = 15
        central "stts", clv_buffer(), clv_buffer_expshop, Row+1, Col+1
        menu_str = ""
        menu_str = menu_str + "lvup" + MKL(l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)))
        IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) = "pndx" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 1 THEN
                haveit_str = "ispt"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "ispt" + MKL(0)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 1 THEN
                haveit_str = "move"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "move" + MKL(0)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 1 THEN
                haveit_str = "bite"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "bite" + MKL(2)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 1 THEN
                haveit_str = "pnch"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "pnch" + MKL(2)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 2 THEN
                haveit_str = "kick"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "kick" + MKL(10)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 3 THEN
                haveit_str = "cure"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "cure" + MKL(20)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 7 THEN
                haveit_str = "vnom"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "vnom" + MKL(30)
                END IF
            END IF
        END IF
        menu_str = menu_str + "cncl" + MKL(0)
        menusize_si = LEN(menu_str) / 8
        inmenu_si = 0
        FOR menuitem_si = 1 TO menusize_si
            menuitem_str = MID(menu_str, (menuitem_si - 1) * 8 + 1, 4)
            menucost_si = CVL(MID(menu_str, (menuitem_si - 1) * 8 + 5, 4))
            R_str = menuitem_str
            central "names"
            IF menucost_si > 0 THEN
				'[!!!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_expshop, clv_glyph(), (X1+1-1) shl 3,(Y1+6+menuitem_si-1) shl 3,  "ú" + rr_str + " " + STRING((40 - 15) - LEN(rr_str) - 7, "-") + RIGHT("----" + STR(menucost_si) + "$", 5)
            END IF
            IF menucost_si = 0 THEN
                '[!!!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_expshop, clv_glyph(), (X1+1-1) shl 3, (Y1+6+menuitem_si-1) shl 3, "ú" + rr_str
            END IF
        NEXT menuitem_si
wwait0:
'sub ln_wwait0 ()
        central "buttonwait"
        menuselect_str = "____"
        menucost_si = 0
        IF Lb_si = -1 THEN
            IF xm_si = 15 THEN
                IF ym_si >= 11 AND ym_si <= 10 + menusize_si THEN
                    menuselect_si = ym_si - 10
                    menuselect_str = MID(menu_str, (menuselect_si - 1) * 8 + 1, 4)
                    menucost_si = CVL(MID(menu_str, (menuselect_si - 1) * 8 + 5, 4))
                END IF
            END IF
        END IF
        IF menuselect_str <> "lvup" AND menuselect_str <> "cncl" AND menuselect_str <> "____" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= menucost_si THEN
                c_str = "L"
                central "abilitygain"
                clv_buffer_focus=clv_buffer_expshop
                END IF
            GOTO reshow1
        END IF
        IF menuselect_str = "lvup" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= menucost_si THEN
                c_str = "L"
                central "levelup"
                clv_buffer_focus=clv_buffer_expshop
            END IF
            GOTO reshow1
        END IF
        IF menuselect_str = "cncl" THEN
            c_str = "L"
        ELSE
            GOTO wwait0
        END IF
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_merchant()
merchant1:
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        
        clv_buffer_focus=clv_buffer_merchant
        clv_buffer_cls clv_buffer(), clv_buffer_merchant

        central "portal"
        statx_si = 2
        central "status"
        viewx_si = 18
        menu_str = ""
        hasit_str = "dggr"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "dggr" + MKL(5)
        END IF
        hasit_str = "pike"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "pike" + MKL(20)
        END IF
        hasit_str = "grpl"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "grpl" + MKL(15)
        END IF
        hasit_str = "seed"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "seed" + MKL(15)
        END IF
        hasit_str = "wstf"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "wstf" + MKL(10)
        END IF
        menu_str = menu_str + "cncl" + MKL(0)
        menusize_si = LEN(menu_str) / 8
        inmenu_si = 0
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (5-1) shl 3, "Merchant"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (7-1) shl 3, "Wha'du like?"
        graphicput clv_buffer(), clv_buffer_merchant, 10, viewx_si + 6, (MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) + "____.24"), spritepath_str
        FOR menuitem_si = 1 TO menusize_si
            menuitem_str = MID(menu_str, (menuitem_si - 1) * 8 + 1, 4)
            menucost_si = CVL(MID(menu_str, (menuitem_si - 1) * 8 + 5, 4))
            R_str = menuitem_str
            central "names"
            IF menucost_si > 0 THEN
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (12 + menuitem_si-1) shl 3, "ú" + rr_str + " " + STRING((40 - viewx_si) - LEN(rr_str) - 7, "-") + RIGHT("----" + RIGHT(STR(menucost_si), LEN(STR(menucost_si)) - 1) + "$", 5)
            END IF
            IF menucost_si = 0 THEN
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (12 + menuitem_si-1) shl 3, "ú" + rr_str
            END IF
        NEXT menuitem_si
'end sub
wwait1:
'sub ln_wwait1()
        central "buttonwait"
        menuselect_str = "____"
        menucost_si = 0
        IF Lb_si = -1 THEN
            IF xm_si = viewx_si THEN
                IF ym_si >= 13 AND ym_si <= 12 + menusize_si THEN
                    menuselect_si = ym_si - 12
                    menuselect_str = MID(menu_str, (menuselect_si - 1) * 8 + 1, 4)
                    menucost_si = CVL(MID(menu_str, (menuselect_si - 1) * 8 + 5, 4))
                END IF
            END IF
        END IF
        IF menuselect_str <> "lvup" AND menuselect_str <> "cncl" AND menuselect_str <> "____" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= menucost_si THEN
                c_str = "L"
                central "abilitygain"
                clv_buffer_focus=clv_buffer_merchant
                hashadit_str = menuselect_str
                central "hashadit"
                G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) + menucost_si
                GOTO merchant1
            END IF
            GOTO merchant1
        END IF
        IF menuselect_str = "lvup" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= menucost_si THEN
                c_str = "L"
                central "levelup"
                clv_buffer_focus=clv_buffer_merchant
                GOTO merchant1
            END IF
            GOTO merchant1
        END IF
        IF menuselect_str = "cncl" THEN
            c_str = "L"
        ELSE
            GOTO wwait1
        END IF
    END IF
    Exit Sub
end sub

sub ln_talk0001()
    dim as short X1, X2, Y1, Y2, C1, C2
    dim as short Row, Col
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        
        clv_buffer_focus=clv_buffer_merchant
        clv_buffer_cls clv_buffer(), clv_buffer_merchant
        
        Row=5
        Col=18
        
        'PCOPY 1, 4
        'PCOPY 2, 1
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        'PCOPY 1, 2
'end sub
'sub ln_reshow3()
        central "portal"
        statx_si = 2
        central "status"
        viewx_si = 18
        menu_str = ""
        menu_str = menu_str + "bye_" + MKL(0)
        menusize_si = LEN(menu_str) / 8
        inmenu_si = 0
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row-1) shl 3, "Poindexter:"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row+1-1) shl 3, "Hi. How are you. My"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row+2-1) shl 3, "name is Poindexter. I"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row+3-1) shl 3, "am the greatest thief"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row+4-1) shl 3, "in the entire world!!!"
        graphicput clv_buffer(), clv_buffer_merchant, Row+5, Col+6, (MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) + "____.24"), spritepath_str
        FOR menuitem_si = 1 TO menusize_si
            menuitem_str = MID(menu_str, (menuitem_si - 1) * 8 + 1, 4)
            menucost_si = CVL(MID(menu_str, (menuitem_si - 1) * 8 + 5, 4))
            R_str = menuitem_str
            central "names"
            IF menucost_si > 0 THEN
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (row+7+menuitem_si-1) shl 3, "ú" + rr_str + " =" + STR(menucost_si)
            END IF
            IF menucost_si = 0 THEN
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (row+7+menuitem_si-1) shl 3, "ú" + rr_str
            END IF
        NEXT menuitem_si
'end sub
wwait2:
'sub ln_wwait2()
        do
            central "buttonwait"
            menuselect_str = "____"
            menucost_si = 0
            IF Lb_si = -1 THEN
                IF xm_si = viewx_si THEN
                    IF ym_si >= 13 AND ym_si <= 12 + menusize_si THEN
                        menuselect_si = ym_si - 12
                        menuselect_str = MID(menu_str, (menuselect_si - 1) * 8 + 1, 4)
                        menucost_si = CVL(MID(menu_str, (menuselect_si - 1) * 8 + 5, 4))
                    END IF
                END IF
            END IF
        loop while menuselect_str <> "bye_"
            'GOTO wwait2
        'END IF
        IF menuselect_str = "bye_" THEN
            c_str = "L"
        ELSE
            central "merchant"
            'GOTO wwait1
        END IF
        'PCOPY 4, 1
    END IF
    Exit Sub
end sub

sub ln_abilitygain()
    e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = e_stra(Rose_Calc( Tx_si, Ty_si ), 1) + menuselect_str
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) - menucost_si
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        'LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        'PCOPY 1, 2
        central "portal"
        central "avgframe"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, "gained"
        R_str = menuselect_str
        central "names"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, rr_str
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_levelup()
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) <> "____" THEN
        IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)) THEN
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) - l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10))
            r1_si = INT(RND(1) * 5) + 1
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 11) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 11) + r1_si
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) + r1_si
            r2_si = INT(RND(1) * 5) + 1
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 12) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 12) + r2_si
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) + r2_si
            r3_si = INT(RND(1) * 5) + 1
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 13) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 13) + r3_si
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) + r3_si
            r4_si = .2
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 4) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 4) + r4_si
            r5_si = .05
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 14) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 14) + r5_si
            am_str = ctrl_str
            central "am"
            IF am_si > 0 THEN
                LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
                PCOPY 1, 2
                central "portal"
                central "avgframe"
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, "      level up!"
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, "HPmax +"
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (9-1) shl 3, RIGHT(STRING(5, " ") + STR(r1_si), 5)
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (11-1) shl 3, "STRmax +"
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (11-1) shl 3, RIGHT(STRING(5, " ") + STR(r2_si), 5)
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (13-1) shl 3, "ESSmax +"
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (13-1) shl 3, RIGHT(STRING(5, " ") + STR(r3_si), 5)
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (15-1) shl 3, "STRspd up!"
                '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (16-1) shl 3, "ESSspd up!"
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) < 64 THEN
                G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) + 1
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (18-1) shl 3, "reached LV!"
                    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (37-1) shl 3, (18-1) shl 3, RIGHT(STRING(3, " ") + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)), 3)
                    IF l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)) - G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= 0 THEN
                        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (20-1) shl 3, "next:"
                        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (34-1) shl 3, (20-1) shl 3, RIGHT(STRING(5, " ") + STR(l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)) - G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)), 5) + "$"
                    END IF
                END IF
            END IF
            am_str = ctrl_str
            central "am"
            IF am_si > 0 THEN
                central "okbutton"
                'PCOPY 2, 1
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 2 AND MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) = "spdr" THEN
                getit_str = "vnom"
                haveit_str = "vnom"
                central "haveit"
                IF haveit_si = 0 THEN
                    e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = e_stra(Rose_Calc( Tx_si, Ty_si ), 1) + getit_str
                    central "gain"
                END IF
            END IF
        END IF
    END IF
    Exit Sub
end sub

sub ln_gain()
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay

        'LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        'PCOPY 1, 2
        central "portal"
        central "avgframe"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, "gained"
        R_str = getit_str
        central "names"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, rr_str
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_getit()
    IF getit_str <> "" THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay

        e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = e_stra(Rose_Calc( Tx_si, Ty_si ), 1) + getit_str
        am_str = ctrl_str
        central "am"
        are_str = ctrl_str
        central "are"
        IF am_si > 0 OR are_si > 0 THEN
            LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
            PCOPY 1, 2
            central "portal"
            central "avgframe"
            '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
            '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "gained"
            R_str = getit_str
            central "names"
            '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, rr_str
            '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (8-1) shl 3, "from"
            '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) + "!"
            central "okbutton"
            'PCOPY 2, 1
        END IF
    END IF
    Exit Sub
end sub

sub ln_attackusing()
    am_str = ctrl_str
    central "am"
    are_str = ctrl_str
    central "are"
    IF am_si > 0 OR are_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay

        'PCOPY 1, 2
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        central "portal"
        central "avgframe"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "used"
        R_str = AA_str
        central "names"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, rr_str
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (8-1) shl 3, "on"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0)
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_battleattack()
    
	am_str = ctrl_str
    central "am"
    are_str = ctrl_str
    central "are"
    IF am_si > 0 OR are_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        'PCOPY 1, 2
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        central "portal"
        central "avgframe"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "used"
        R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4)
        central "names"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, rr_str
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0)
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (11-1) shl 3, "HP -"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (11-1) shl 3, RIGHT(STRING(5, " ") + STR(hp_dmg_si), 5)
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (12-1) shl 3, "STR-"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (12-1) shl 3, RIGHT(STRING(5, " ") + STR(str_dmg_si), 5)
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_defeated()
    am_str = ctrl_str
    central "am"
    are_str = ctrl_str
    central "are"
    IF am_si > 0 OR are_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        'PCOPY 1, 2
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        central "portal"
        central "avgframe"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "pillaged"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0)
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, "EXP+"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (34-1) shl 3, (9-1) shl 3, RIGHT(STRING(5, " ") + STR(expgain_si), 5) + "$"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (10-1) shl 3, "EXP:"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (34-1) shl 3, (10-1) shl 3, RIGHT(STRING(5, " ") + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)), 5) + "$"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (12-1) shl 3, "STR+"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (12-1) shl 3, RIGHT(STRING(5, " ") + STR(strgain_si), 5)
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (13-1) shl 3, "STR:"
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (13-1) shl 3, RIGHT(STRING(5, " ") + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 2)), 5)
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_portal()
    dim as short Ratio1, Ratio2, X1, X2, X3, Y1, Y2, Y3
    dim as short FX1,FY1,FX2,FY2,FC1,FC2
    dim as short Row, Col
    dim as short tempt
    
    Col=2
    Row=2
   
    clv_buffer_cls clv_buffer(), clv_buffer_portal
    
    FX1 = Col
    FX2 = FX1+7*3-1
    FY1 = Row
    FY2 = FY1+7*3-1
    FC1 = 1
    FC2 = 9
    frame_put clv_buffer(), clv_buffer_portal, FX1, FY1, FX2, FY2, FC1, FC2
    
    Ratio1=fix((Ty_si-3)*7*3/DD_si)-1
    Ratio2=fix((Ty_si+3)*7*3/DD_si)
    if Ratio1<0 then Ratio1=0
    if Ratio1>7*3-1 then Ratio1=7*3-1
    if Ratio2<0 then Ratio2=0
    if Ratio2>7*3 then Ratio2=7*3
    X1=(FX2 shl 3)
    X2=(FX2 shl 3)+2
    X3=(FX2 shl 3)+1
    Y1=((FX1+Ratio1-1) shl 3)
    Y2=((FX1+Ratio2-1) shl 3)-1
    clv_draw_line clv_buffer(), clv_buffer_portal, X1, Y1, X2, Y2, rgb(192,192,192), rgb(0,0,0), clv_flag_bf
    clv_draw_line clv_buffer(), clv_buffer_portal, X3, Y1, X3, Y2, rgb(255,255,255), rgb(0,0,0), clv_flag_bf

    Ratio1=fix((Tx_si-3)*7*3/AA_si)-1
    Ratio2=fix((Tx_si+3)*7*3/AA_si)
    if Ratio1<0 then Ratio1=0
    if Ratio1>7*3-1 then Ratio1=7*3-1
    if Ratio2<0 then Ratio2=0
    if Ratio2>7*3 then Ratio2=7*3
    X1=((FY1+Ratio1-1) shl 3)
    X2=((FY1+Ratio2-1) shl 3)-1
    Y1=(FY2 shl 3)
    Y2=(FY2 shl 3)+2
    Y3=(FY2 shl 3)+1
    clv_draw_line clv_buffer(), clv_buffer_portal, X1, Y1, X2, Y2, rgb(192,192,192), rgb(0,0,0), clv_flag_bf
    clv_draw_line clv_buffer(), clv_buffer_portal, X1, Y3, X2, Y3, rgb(255,255,255), rgb(0,0,0), clv_flag_bf

    dx1_si = Tx_si - 3
    dy1_si = Ty_si - 3
    dx2_si = Tx_si + 3
    dy2_si = Ty_si + 3
    IF dx1_si < 1 THEN
        dx1_si = 1
    END IF
    IF dy1_si < 1 THEN
        dy1_si = 1
    END IF
    IF dx2_si > AA_si THEN
        dx2_si = AA_si
    END IF
    IF dy2_si > DD_si THEN
        dy2_si = DD_si
    END IF
    FOR ttx = dx1_si TO dx2_si
        FOR tty = dy1_si TO dy2_si
            graphicput clv_buffer(), clv_buffer_portal, ((tty-Ty_si+3)*3+Row), ((ttx-Tx_si+3)*3+Col), (MID(e_stra(ttx + (tty - 1) * AA_si, 2), 5, 4) + "____" + ".24"), spritepath_str
            graphicput clv_buffer(), clv_buffer_portal, ((tty-Ty_si+3)*3+Row), ((ttx-Tx_si+3)*3+Col), (MID(e_stra(ttx + (tty - 1) * AA_si, 2), 1, 4) + MID(e_stra(ttx + (tty - 1) * AA_si, 4), 1, 4) + ".24"), spritepath_str
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = ttx
            Ty_si = tty
            central "tempget"
            Tx_si = temptx_si
            Ty_si = tempty_si
            tempt=0
            for T_si=1 to fix(len(e_stra(ttx + (tty - 1) * AA_si, 1))/4)
                select case mid(e_stra(ttx + (tty - 1) * AA_si, 1),(T_si)*4-3,4)
                case "loc1"
                    tempt=1
                case "loc2"
                    tempt=1
                case "loc3"
                    tempt=1
                end select
                if tempt>0 then
                    graphicput clv_buffer(), clv_buffer_portal, ((tty-Ty_si+3)*3+Row), ((ttx-Tx_si+3)*3+Col), (mid(e_stra(ttx + (tty - 1) * AA_si, 1),(T_si)*4-3,4)+"____.24"), spritepath_str
                end if
            next
            IF tempaction_str = "zzzz" THEN
                graphicput clv_buffer(), clv_buffer_portal, ((tty-Ty_si+3)*3+Row), ((ttx-Tx_si+3)*3+Col), ("zzzz____.24"), spritepath_str
            END IF
        NEXT tty
    NEXT ttx
    FOR ttx = dx1_si TO dx2_si
        FOR tty = dy1_si TO dy2_si
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = ttx
            Ty_si = tty
            central "tempget"
            Tx_si = temptx_si
            Ty_si = tempty_si
            IF tempaction_str = "grpl" OR tempaction_str = "rapl" THEN
                IF tempdis_si > 0 THEN
                    tempy1_sf=(tty-Ty_si+3)*3+Row
                    tempx1_sf=(ttx-Tx_si+3)*3+Col
                    tempy2_sf=(tty-Ty_si+3+d_sia(tempd_si,2)*tempdis_si)*3+Row
                    tempx2_sf=(ttx-Tx_si+3+d_sia(tempd_si,1)*tempdis_si)*3+Col
                    clv_draw_line clv_buffer(), clv_buffer_portal, (tempx1_sf-1)*8+12,(tempy1_sf-1)*8+12,(tempx2_sf-1)*8+12,(tempy2_sf-1)*8+12, rgb(192,131,0), rgb(0,0,0), clv_flag_default
                    FOR t_sf = 0 TO tempdis_si STEP tempdis_si / 8
                        tempy_sf=(tty-Ty_si+3+d_sia(tempd_si,2)*t_sf)*3+2
                        tempx_sf=(ttx-Tx_si+3+d_sia(tempd_si,1)*t_sf)*3+2
                        tt_sf = t_sf
                        IF tempdis_si <= 1 THEN
                            tt_sf = t_sf
                        ELSE
                            IF t_sf < tempdis_si - 1 THEN
                                tt_sf = -1
                            ELSE
                                tt_sf = t_sf - tempdis_si + 1
                            END IF
                        END IF
                        IF tt_sf >= 0 THEN
                            clv_draw_pixel clv_buffer(), clv_buffer_portal, (tempx_sf-1)*8+12, (tempy_sf-1) * 8-tt_sf+12, rgb(192,192,192), rgb(0,0,0)
                            clv_draw_pixel clv_buffer(), clv_buffer_portal, (tempx_sf-1)*8+tt_sf+12, (tempy_sf-1)*8+12, rgb(192,192,192), rgb(0,0,0)
                            clv_draw_pixel clv_buffer(), clv_buffer_portal, (tempx_sf-1)*8+12, (tempy_sf-1)*8+tt_sf+12, rgb(192,192,192), rgb(0,0,0)
                            clv_draw_pixel clv_buffer(), clv_buffer_portal, (tempx_sf-1)*8-tt_sf+12, (tempy_sf-1)*8+12, rgb(192,192,192), rgb(0,0,0)
                        END IF
                    NEXT t_sf
                END IF
            END IF
        NEXT tty
    NEXT ttx
    Exit Sub
end sub

sub ln_title(clv_buffer() as fb.image ptr, Index as integer)
    clv_buffer_cls clv_buffer(), clv_buffer_draw
    'graphicput clv_buffer(), clv_buffer_portal1, 2, "aquagame.56", logopath_str
    colr_si = 9
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (3-1) shl 3, (2-1) shl 3, "An Http://Puzzlum.Net/ Featured Project!"
    LOCATE 4, 1
    Exit Sub
end sub

sub ln_status()
    clv_buffer_cls clv_buffer(), clv_buffer_status
    frame_status 4, 24
    frame_inventory 14, 24
end sub

sub ln_framstts()
    framex1_sf = statx_si
    framex2_sf = statx_si+5*3-1
    framey1_sf = 4
    framey2_sf = 12
    framec1_si = 4
    framec2_si = 12
    central "frameput", clv_buffer(), clv_buffer_status
    Exit Sub
end sub

sub ln_framsttsitms()
    framex1_sf = statx_si
    framex2_sf = statx_si+5*3-1
    framey1_sf = 14
    framey2_sf = 23
    framec1_si = 4
    framec2_si = 12
    central "frameput", clv_buffer(), clv_buffer_status
    Exit Sub
end sub
sub ln_stts(clv_buffer() as fb.image ptr, Index as integer, Row as short, Col as short)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+0-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+1-1) shl 3, "LV"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+3-1) shl 3, (Row+1-1) shl 3, RIGHT(STR(100 + G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)), 2)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+1-1) shl 3, (RIGHT("     " + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)), 5) + "$")
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+2-1) shl 3, (Row+1-1) shl 3, "ú"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+2-1) shl 3, "HP"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+4-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 1))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+2-1) shl 3, "/"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+11-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 11))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+3-1) shl 3, "STR"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+4-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 2))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+3-1) shl 3, "/"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+11-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 12))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+4-1) shl 3, "ESS"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+4-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 3))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+4-1) shl 3, "/"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+11-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 13))), 4)
    Exit Sub
end sub

sub ln_sttsgpic()
    'central "getaction"
    'SELECT CASE d_si
    'CASE 0
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttnself.24", spritepath_str
    'CASE 1
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttnnrth.24", spritepath_str
    'CASE 2
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttneast.24", spritepath_str
    'CASE 3
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttnsuth.24", spritepath_str
    'CASE 4
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttnwest.24", spritepath_str
    'END SELECT
    'graphicput clv_buffer(), clv_buffer_portal9, statx_si + 6, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) + "____.24"), spritepath_str
    'graphicput clv_buffer(), clv_buffer_portal9, statx_si + 3, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) + "____.24"), spritepath_str
    'FOR t_si = 1 TO LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
    '    R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si - 1) * 4 + 1, 4)
    '    central "names"
    '    IF action_str = R_str THEN
    '        '[!]'clv_Draw_Text 12, statx_si, rr_str, 15, 1
    '    end if
    'NEXT t_si
    'Exit Sub
end sub

sub ln_sttsitms()
    'dim as short X, Y
    'central "getaction"
    'FOR t_si = 1 TO LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
    '    X=fix((t_si-1) mod 5)*3
    '    Y=fix((t_si-1)/5)*3
    '    R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si - 1) * 4 + 1, 4)
    '    central "names"
    '    graphicput clv_buffer(), clv_buffer_portal14 + Y, statx_si + X, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si*4)-3, 4) + "____.24"), spritepath_str
    '    IF action_str = R_str THEN
    '        clv_draw_line clv_buffer(), page_status, (statx_si+X-1) shl 3,(14+Y-1) shl 3,((statx_si+X-1) shl 3)+23,((14+Y-1) shl 3)+23, rgb(255,255,255), rgb(0,0,0)
    '    end if
    'NEXT t_si
    'Exit Sub
end sub

sub ln_move()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "move"
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "move"
    are_str = "____pwch"
    central "are"
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) >= 1 AND are_si > 0 THEN
        move_si = 1
        here_str = "watr"
        central "here"
        IF here_si > 0 THEN move_si = 0
        there_str = "watr"
        central "there"
        IF there_si > 0 THEN move_si = 0
        here_str = "hole"
        central "here"
        there_str = "holestpsstp2"
        central "there"
        IF here_si > 0 AND there_si <= 0 THEN move_si = 0
        IF move_si = 1 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 1
            central "swapdata"
        END IF
    END IF
    Exit Sub
end sub

sub ln_wingmove()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "move"
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "move"
    are_str = "____pwch"
    central "are"
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) >= 3 AND are_si > 0 THEN
        move_si = 1
        IF move_si = 1 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 3
            central "swapdata"
        END IF
    END IF
    Exit Sub
end sub

sub ln_firemove()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) >= 1 THEN
        IF 1 = 1 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "move"
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 1
            central "swapdata"
        END IF
    ELSE
        central "gone"
    END IF
    Exit Sub
end sub

sub ln_webmove()
    IF Tx_si = ex_si AND Ty_si = dy_si THEN
        am_str = ctrl_str
        central "am"
        IF am_si > 0 THEN
            ex_si = Tx_si + d_sia(d_si, 1) * dis_si
            dy_si = Ty_si + d_sia(d_si, 2) * dis_si
        END IF
    END IF
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "move"
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "move"
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 1
    central "swapdata"
    Exit Sub
end sub

sub ln_castfire()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 20 THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "fire"
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 20
        profile_manip "blnk"
        prflidty_str = "Flame"
        prflactn_str = "moveburn"
        prflactnct_str = mkl(1)+mkl(1)
        prflgpic_str = "fire"
        prflcmnd_str = MKL(d_si) + "move" + MKL(0)
        prflhpcur_sf = 120
        prflstrcur_sf = 10
        prflesscur_sf = 100
        prflstrspd_sf = 1
        prflvalu_sf = 1
        prflchck_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 120
        prflstrmax_sf = 50
        prflessmax_sf = 100
        prflessspd_sf = 5
        profile_manip "make"
    END IF
    Exit Sub
end sub

sub ln_castdust()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 8 THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "dust"
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 8
        profile_manip "blnk"
        prflidty_str = "Sleepy dust"
        prflactn_str = "move"
        prflactnct_str = mkl(1)
        prflgpic_str = "dust"
        prflcmnd_str = MKL(d_si) + "move" + MKL(0)
        prflhpcur_sf = 120
        prflstrcur_sf = 10
        prflesscur_sf = 100
        prflstrspd_sf = 1
        prflvalu_sf = 1
        prflchck_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 120
        prflstrmax_sf = 50
        prflessmax_sf = 100
        prflessspd_sf = 5
        profile_manip "make"
    END IF
    Exit Sub
end sub

sub ln_castweb()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 220 THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 220
        profile_manip "blnk"
        prflidty_str = "Web"
        prflactn_str = "spdr"
        prflactnct_str = mkl(1)
        prflgpic_str = "web_"
        prflcmnd_str = MKL(d_si) + "move" + MKL(0)
        prflidty_sf = 3
        prflhpcur_sf = 40
        prflstrcur_sf = 50
        prflstrspd_sf = 1
        prflvalu_sf = 1
        prflchck_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 40
        prflstrmax_sf = 50
        prflessmax_sf = 380
        prflessspd_sf = 2
        profile_manip "make"
    END IF
    Exit Sub
end sub

sub ln_castspdr()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 320 THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 320
        profile_manip "blnk"
        prflidty_str = "Spider"
        prflactn_str = "movebiteweb_"
        prflactnct_str = mkl(1)+mkl(1)+mkl(1)
        prflgpic_str = "spdr"
        prflcmnd_str = MKL(0) + "move" + MKL(0)
        prflidty_sf = 1
        prflhpcur_sf = 10
        prflstrcur_sf = 20
        prflstrspd_sf = 1
        prflarmr_sf = 1
        prflvalu_sf = 5
        prflpirc_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 10
        prflstrmax_sf = 20
        prflessmax_sf = 380
        prflessspd_sf = 3
        profile_manip "make"
    END IF
    Exit Sub
end sub

sub ln_castccts()
    profile_manip "blnk"
    prflidty_str = "Cactus"
    prflgpic_str = "ccts"
    prflidty_sf = 13
    prflhpcur_sf = 10
    prflstrcur_sf = 20
    prflstrspd_sf = 1
    prflarmr_sf = 1
    prflvalu_sf = 5
    prflpirc_sf = 3
    prflchck_sf = 1
    prfllv_sf = 1
    prflhpmax_sf = 10
    prflstrmax_sf = 20
    prflessmax_sf = 380
    prflessspd_sf = 3
    profile_manip "make"
    Exit Sub
end sub

sub ln_castdtby()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 160 THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 160
        profile_manip "blnk"
        prflidty_str = "Dust Bunny"
        prflactn_str = "bitekick"
        prflactnct_str = mkl(1)+mkl(1)
        prflgpic_str = "dtby"
        prflcmnd_str = MKL(0) + "move" + MKL(0)
        prflidty_sf = 6
        prflhpcur_sf = 15
        prflstrcur_sf = 20
        prflesscur_sf = 5
        prflstrspd_sf = 1.2
        prflvalu_sf = 2
        prflchck_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 15
        prflstrmax_sf = 20
        prflessmax_sf = 280
        prflessspd_sf = 1
        profile_manip "make"
    END IF
    Exit Sub
end sub

sub ln_gone()
    profile_manip "blnk"
    profile_manip "set"
    Exit Sub
end sub

sub ln_delete2()
    profile_manip "blnk"
    profile_manip "make"
    Exit Sub
end sub

sub ln_autolevelup()
    am_str = ctrl_str
    central "am"
    IF am_si = 0 THEN
        central "levelup"
    END IF
    Exit Sub
end sub

sub ln_statgain()
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) + G_dfa(Rose_Calc( Tx_si, Ty_si ), 4)
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) + G_dfa(Rose_Calc( Tx_si, Ty_si ), 14)
    Exit Sub
end sub

sub ln_statmax()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) > G_dfa(Rose_Calc( Tx_si, Ty_si ), 11) THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 11)
    END IF
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) > G_dfa(Rose_Calc( Tx_si, Ty_si ), 12) THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 12)
    END IF
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) > G_dfa(Rose_Calc( Tx_si, Ty_si ), 13) THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 13)
    END IF
    Exit Sub
end sub

sub ln_nextaction()
    am_str = ctrl_str
    central "am"
    IF am_si = 0 THEN
        IF 1 = 1 THEN
            central "newaction"
            central "putaction"
        END IF
    ELSE
        central "getaction"
    END IF
    Exit Sub
end sub

sub ln_newaction()
    central "getaction"
    IF NOT (action_str = "zzzz" AND dis_si > 0) THEN
        d_si = INT(RND(1) * 4) + 1
        central "randomaction"
        dis_si = 0
    END IF
    Exit Sub
end sub

sub ln_randomaction()
    R_si = LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
    R_si = INT(RND(1) * (R_si + 1))
    IF R_si = 0 THEN
        action_str = "____"
    ELSE
        action_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (R_si - 1) * 4 + 1, 4)
    END IF
    Exit Sub
end sub

sub ln_getaction()
    d_si = CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 1, 4))
    action_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4)
    dis_si = CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 9, 4))
    Exit Sub
end sub

sub ln_putaction()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 1, 4) = MKL(d_si)
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) = action_str
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 9, 4) = MKL(dis_si)
    Exit Sub
end sub

sub ln_tempget()
    tempd_si = CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 1, 4))
    tempaction_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4)
    tempdis_si = CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 9, 4))
    Exit Sub
end sub

sub ln_tempput()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 1, 4) = MKL(tempd_si)
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) = tempaction_str
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 9, 4) = MKL(tempdis_si)
    Exit Sub
end sub

sub ln_inbounds()
    IF (Tx_si + d_sia(d_si, 1) * dis_si >= 1) AND (Tx_si + d_sia(d_si, 1) * dis_si <= AA_si) AND (Ty_si + d_sia(d_si, 2) * dis_si >= 1) AND (Ty_si + d_sia(d_si, 2) * dis_si <= DD_si) THEN
        inbounds_si = 1
    ELSE
        inbounds_si = 0
    END IF
    Exit Sub
end sub

sub ln_haveit()
    haveit_si = 0
    t_str = e_stra(Rose_Calc( Tx_si, Ty_si ), 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = haveit_str THEN
            haveit_si = haveit_si + 1
        END IF
    NEXT tt_si
    Exit Sub
end sub

sub ln_hasit()
    hasit_si = 0
    t_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = hasit_str THEN
            hasit_si = hasit_si + 1
        END IF
    NEXT tt_si
    Exit Sub
end sub

sub ln_havehadit()
    t_str = e_stra(Rose_Calc( Tx_si, Ty_si ), 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = havehadit_str THEN
            t_str = LEFT(t_str, (tt_si - 1) * 4) + RIGHT(t_str, t_si * 4 + 1 - tt_si * 4 - 1)
            tt_si = t_si
        END IF
    NEXT tt_si
    e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = t_str
    Exit Sub
end sub

sub ln_hashadit()
    t_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = hashadit_str THEN
            t_str = LEFT(t_str, (tt_si - 1) * 4) + RIGHT(t_str, t_si * 4 + 1 - tt_si * 4 - 1)
            tt_si = t_si
        END IF
    NEXT tt_si
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = t_str
    Exit Sub
end sub

sub ln_havegotit()
    t_str = e_stra(Rose_Calc( Tx_si, Ty_si ), 1)
    e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = t_str + havegotit_str
    Exit Sub
end sub

sub ln_hasgotit()
    t_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = t_str + hasgotit_str
    Exit Sub
end sub

sub ln_winexp()
    getit_si = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6)
    IF getit_si > 0 THEN
        getit_str = STR(getit_si) + " EXP"
        getit_str = RIGHT(getit_str, LEN(getit_str) - 1)
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) + getit_si
        central "getit"
        G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) = 0
    END IF
    Exit Sub
end sub

sub ln_windggr()
    winit_str = "dggr"
    central "winit"
end sub

sub ln_winpike()
    winit_str = "pike"
    central "winit"
end sub

sub ln_wingrpl()
    winit_str = "grpl"
    central "winit"
end sub

sub ln_winseed()
    winit_str = "seed"
    central "winit"
end sub

sub ln_winkey1()
    winit_str = "key1"
    central "winit"
end sub

sub ln_winkey2()
    winit_str = "key2"
    central "winit"
end sub

sub ln_winit()
    getit_str = winit_str
    hasit_str = winit_str
    central "hasit"
    IF hasit_si = 0 THEN Exit Sub
    haveit_str = winit_str
    central "haveit"
    IF haveit_si > 0 THEN Exit Sub
    central "getit"
    hashadit_str = winit_str
    central "hashadit"
    Exit Sub
end sub

sub ln_am()
    am_si = 0
    FOR t_si = 1 TO LEN(am_str) / 4
        IF MID(am_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) THEN
            am_si = am_si + 1
        END IF
    NEXT t_si
    Exit Sub
end sub

sub ln_are()
    are_si = 0
    FOR t_si = 1 TO LEN(are_str) / 4
        IF MID(are_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) THEN
            are_si = are_si + 1
        END IF
    NEXT t_si
    Exit Sub
end sub

sub ln_here()
    here_si = 0
    FOR t_si = 1 TO LEN(here_str) / 4
        IF MID(here_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) THEN
            here_si = here_si + 1
        END IF
    NEXT t_si
    Exit Sub
end sub

sub ln_there()
    there_si = 0
    FOR t_si = 1 TO LEN(there_str) / 4
        IF MID(there_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 5, 4) THEN
            there_si = there_si + 1
        END IF
    NEXT t_si
    Exit Sub
end sub

sub ln_blankcheck()
    are_str = blankcheck_str
    central "inbounds"
    IF inbounds_si = 1 THEN
        central "are"
    ELSE
        are_si = -1
    END IF
    blankcheck_si = are_si
    Exit Sub
end sub

sub ln_okbutton()
    'clv_buffer_focus=clv_buffer_menu
    clv_buffer_cls clv_buffer(), clv_buffer_menu
    
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_menu, clv_glyph(), (25-1) shl 3,(23-1) shl 3, "úOk"
    central "wwait"

    clv_buffer_cls clv_buffer(), clv_buffer_menu
end sub

sub ln_wwait()
    do
        central "buttonwait"
    loop while not(((c_str = "&H0D") OR (ym_si = 23 AND xm_si = 25 AND Lb_si = -1)))
    c_str = "L"
end sub

sub ln_buttonwait()
    cinput
    cursorput
    'netscreenout
    clv_buffer_stack clv_buffer()
end sub

sub ln_commandwait()
    c_str = "%%"
    Lb_si = 0
    WHILE c_str = "%%" AND Lb_si = 0
        cinput
        cursorput
        'netscreenout
        clv_buffer_stack clv_buffer()
    WEND
end sub

sub ln_frameput()
    pset ((framex1_sf-1)*8, (framey1_sf-1)*8), rgb(0,0,0) 'pal(0)
    line  -((framex2_sf-0)*8-1, (framey2_sf-0)*8-1), rgb(0,0,0), bf 'pal(0)
    
    pset ((framex1_sf-1)*8-1, (framey1_sf-1)*8-3), rgb(0,0,0) 'pal(0)
    line -((framex2_sf-0)*8+1-1, (framey2_sf-0)*8+3-1), rgb(131,131,131), b 'pal(framec1_si), B
    pset ((framex1_sf-1)*8-3, (framey1_sf-1)*8-1), rgb(0,0,0) 'pal(0)
    line -((framex2_sf-0)*8+3-1, (framey2_sf-0)*8+1-1), rgb(131,131,131), b 'pal(framec1_si), B
    
    pset ((framex1_sf-1)*8-2, (framey1_sf-1)*8-2), rgb(0,0,0) 'pal(0)
    line -((framex2_sf-0)*8+2-1, (framey2_sf-0)*8+2-1), rgb(192,192,192), b 'pal(framec2_si), B
    
    PSET ((framex1_sf-1)*8-2, (framey1_sf-1)*8-2), rgb(131,131,131) 'pal(framec1_si)
    PSET ((framex2_sf-0)*8+2-1, (framey2_sf-0)*8+2-1), rgb(131,131,131) 'pal(framec1_si)
    PSET ((framex1_sf-1)*8-2, (framey2_sf-1)*8+2-1), rgb(131,131,131) 'pal(framec1_si)
    PSET ((framex2_sf-0)*8+2-1, (framey1_sf-0)*8-2), rgb(131,131,131) 'pal(framec1_si)
    Exit Sub
end sub

sub ln_avgframe()
    dim as short X1, X2, Y1, Y2, C1, C2
    dim as short Row, Col
    
    Row=4
    Col=25
    
    X1 = Col
    X2 = Col+15
    Y2 = Row
    Y2 = Row+20
    C1 = 4
    C2 = 12
    frame_put clv_buffer(), clv_buffer_menu, X1, Y2, X2, Y2, C1, C2
    Exit Sub
end sub

sub ln_screenset()
    clv_buffer_stack clv_buffer()
end sub

sub ln_findcrsr()
    crsry_si = CSRLIN
    crsrx_si = POS(0)
end sub

sub ln_showtext(clv_buffer() as fb.image ptr, Index as integer)
    
	central_call "findcrsr"
    
	locate crsry_si, crsrx_si
	
	print texts_str
	
	''[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), (crsrx_si-1) shl 3, (crsry_si-1) shl 3, texts_str
    
	LOCATE crsry_si + 1, 1

end sub


sub ln_actncure()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = "pndxspdrgrmldtbyemgdshktimp_"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "use"+"cure"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnbite()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkbite"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnpnch()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkpnch"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnkick()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkkick"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actndggr()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkdggr"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnpike()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkpike"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnvnom()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkvnom"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnfire()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castfire"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkfire"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actndust()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castdust"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "useslep"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnweb()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castweb"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkweb"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnspdr()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castspdr"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnccts()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castccts"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actndtby()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castdtby"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnmove()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    central "move"
    Exit Sub
end sub

sub ln_actnwing()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    central "wingmove"
    Exit Sub
end sub

sub ln_actnwstf()
    dis_si = 1
    blankcheck_str = "bldr"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        dis_si = 2
        blankcheck_str = "____pwch"
        central "blankcheck"
        IF blankcheck_si > 0 THEN
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = Tx_si + d_sia(d_si, 1)
            Ty_si = Ty_si + d_sia(d_si, 2)
            dis_si = 1
            central "swapdata"
            Tx_si = temptx_si
            Ty_si = tempty_si
            Exit Sub
        END IF
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkwstf"
    END IF
    Exit Sub
end sub

sub ln_actnkey1()
    dis_si = 1
    blankcheck_str = "door"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        hasit_str = "loc1"
        central "hasit"
        IF hasit_si > 0 THEN
            hashadit_str = "loc1"
            central "hashadit"
            havehadit_str = "key1"
            central "havehadit"
            central "delete2"
        END IF
    END IF
    Exit Sub
end sub

sub ln_actnkey2()
    dis_si = 1
    blankcheck_str = "door"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        hasit_str = "loc2"
        central "hasit"
        IF hasit_si > 0 THEN
            hashadit_str = "loc2"
            central "hashadit"
            havehadit_str = "key2"
            central "havehadit"
            central "delete2"
        END IF
    END IF
    Exit Sub
end sub

sub ln_actnispt()
    dim as short tempt
    dis_si = 1
    central "putaction"
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 OR blankcheck_si > 0 THEN Exit Sub
    IF e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) = "Merchant" THEN
        central "merchant"
        Exit Sub
    END IF
    IF e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) = "Poindexter" THEN
        central "talk0001"
        Exit Sub
    END IF
    blankcheck_str = "pwchchst"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "pillage"
        blankcheck_str = "pwch"
        IF blankcheck_si > 0 THEN
            central "delete2"
        END IF
        Exit Sub
    END IF
    blankcheck_str = "door"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        tempt=0
        for T_si=1 to fix(len(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1))/4)
            select case mid(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1),T_si*4-3,4)
            case "loc1"
                tempt=1
            case "loc2"
                tempt=1
            case "loc3"
                tempt=1
            end select
        next
        if tempt=0 then
            central "delete2"
        END IF
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnfiremove()
    dis_si = 1
    blankcheck_str = "____pwch"
    central "blankcheck"
    IF blankcheck_si = -1 THEN
        central "gone"
        Exit Sub
    END IF
    IF blankcheck_si > 0 THEN
        central "firemove"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkburn"
        central "gone"
        Exit Sub
    END IF
    central "gone"
    Exit Sub
end sub

sub ln_actndustmove()
    dis_si = 1
    blankcheck_str = "____pwch"
    central "blankcheck"
    IF blankcheck_si = -1 THEN
        central "gone"
    Exit Sub
    END IF
    IF blankcheck_si > 0 THEN
        central "firemove"
    Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "useslep"
        central "gone"
        Exit Sub
    END IF
    central "gone"
    Exit Sub
end sub

sub ln_actnwebmove()
    dis_si = 1
    blankcheck_str = "____pwch"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "webmove"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attktngl"
        central "gone"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actngrpl()
    IF dis_si = 3 THEN
        action_str = "rapl"
        central "putaction"
        central "actn"+"rapl"
        Exit Sub
    END IF
    IF dis_si = 0 AND G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) < 10 THEN
        action_str = "____pwch"
        central "putaction"
        Exit Sub
    END IF
    IF dis_si = 0 THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 10
    END IF
    IF dis_si < 3 THEN
        dis_si = dis_si + 1
    END IF
        blankcheck_str = "____pwch"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "pnch"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "grpl"
        central "blankcheck"
        IF blankcheck_si = -1 THEN
            dis_si = dis_si - 1
        Exit Sub
    END IF
    IF blankcheck_si > 0 THEN
        central "putaction"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "putaction"
        action_str = "rapl"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "pnch"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "grpl"
        central "putaction"
        central "attklash"
        Exit Sub
    END IF
    blankcheck_str = "bldrchst"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        action_str = "rapl"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "pnch"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "grpl"
        central "putaction"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnrapl()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "pnch"
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "grpl"
    IF dis_si = 1 THEN
        action_str = "____pwch"
        dis_si = 0
        central "putaction"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
        Exit Sub
    END IF
    blankcheck_str = "____pwch"
    central "blankcheck"
    IF blankcheck_si = -1 THEN
        IF dis_si > 1 THEN
            dis_si = dis_si - 1
            central "putaction"
        END IF
        Exit Sub
    END IF
    IF blankcheck_si > 0 THEN
        IF dis_si > 1 THEN
            dis_si = dis_si - 1
            central "putaction"
        END IF
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attklash"
        dis_si = dis_si - 1
        central "putaction"
        Exit Sub
    END IF
    blankcheck_str = "bldrchst"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        dis_si = 1
        blankcheck_str = "____pwch"
        central "blankcheck"
        IF blankcheck_si = 0 THEN
            dis_si = dis_si - 1
            central "putaction"
            Exit Sub
        END IF
        IF blankcheck_si > 0 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            central "swapdata"
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = Tx_si + d_sia(d_si, 1)
            Ty_si = Ty_si + d_sia(d_si, 2)
            central "getaction"
            dis_si = dis_si - 1
            central "putaction"
            Tx_si = temptx_si
            Ty_si = tempty_si
            Exit Sub
        END IF
    END IF
    Exit Sub
end sub

sub ln_crtnimp()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxgrmlspdrdtbyweb_emgdshkt"
    
	central "actn" + action_str
	
	'SELECT CASE CVL(action_str)	
	'CASE CVL("move")
    '    central "actnmove"
    'CASE CVL("fire")
    '    central "actnfire"
    'CASE CVL("ispt")
    '    central "actnispt"
    'CASE CVL("wing")
    '    central "actnwing"
    'END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnfire()
    central "statgain"
    central "statmax"
    central "getaction"
    attackthem_str = "pndxgrmlspdrdtbyweb_shktemgd"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actn"+"fire"+"move"
    END SELECT
    Exit Sub
end sub

sub ln_crtndust()
    central "statgain"
    central "statmax"
    central "getaction"
    attackthem_str = "pndxgrmlspdrshktemgdimp_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actn"+"dust"+"move"
    END SELECT
    Exit Sub
end sub

sub ln_crtnshkt()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxgrmlspdrdtbyweb_imp_"
    
	central "actn" + action_str

	'SELECT CASE CVL(action_str)
    'CASE CVL("move")
    '    central "actnmove"
    'CASE CVL("fire")
    '    central "actnfire"
    'CASE CVL("bite")
    '    central "actnbite"
    'CASE CVL("pnch")
    '    central "actnpnch"
    'CASE CVL("kick")
    '    central "actnkick"
    'CASE CVL("dggr")
    '    central "actndggr"
    'CASE CVL("pike")
    '    central "actnpike"
    'END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnemgd()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxgrmlspdrdtbyweb_imp_"
    
	central "actn" + action_str

	'SELECT CASE CVL(action_str)
    'CASE CVL("move")
    '    central "actnmove"
    'CASE CVL("fire")
    '    central "actnfire"
    'CASE CVL("bite")
    '    central "actnbite"
    'CASE CVL("pnch")
    '    central "actnpnch"
    'CASE CVL("kick")
    '    central "actnkick"
    'CASE CVL("dggr")
    '    central "actndggr"
    'CASE CVL("pike")
    '    central "actnpike"
    'END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnspdr()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxdtbyspdrimp_emgdshktgrml"
    central "actn" + action_str
	'SELECT CASE CVL(action_str)
    'CASE CVL("move")
    '    central "actnmove"
    'CASE CVL("web_")
    '    central "actnweb"
    'CASE CVL("bite")
    '    central "actnbite"
    'CASE CVL("vnom")
    '    central "actnkick"
    'END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnweb()
    central "statgain"
    central "statmax"
    central "getaction"
    IF action_str <> "move" THEN
        central "nextaction"
    END IF
    attackthem_str = "pndxgrmldtbyweb_shktemgdimp_"
    
	select case action_str
	case "web_"
		central "actn" + "web" + action_str
	case else
		central "actn" + action_str
	end select
	
	'SELECT CASE CVL(action_str)
    'CASE CVL("move")
    '    central "actnwebmove"
    'CASE CVL("spdr")
    '    central "actnspdr"
    'END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtndtby()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxgrmlspdrimp_emgdshkt"
	
	central "actn" + action_str

    'SELECT CASE CVL(action_str)
    'CASE CVL("move")
    '    central "actnmove"
    'CASE CVL("fire")
    '    central "actnfire"
    'CASE CVL("dtby")
    '    central "actndtby"
    'CASE CVL("bite")
    '    central "actnbite"
    'CASE CVL("kick")
    '    central "actnkick"
    'CASE CVL("dust")
    '    central "actndust"
    'END SELECT
	
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtngrml()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxdtbyspdrimp_emgdshktweb_"
    
	central "actn" + action_str

	'SELECT CASE CVL(action_str)
    'CASE CVL("move")
    '    central "actnmove"
    'CASE CVL("fire")
    '    central "actnfire"
    'CASE CVL("bite")
    '    central "actnbite"
    'CASE CVL("pnch")
    '    central "actnpnch"
    'CASE CVL("kick")
    '    central "actnkick"
    'CASE CVL("dggr")
    '    central "actndggr"
    'CASE CVL("pike")
    '    central "actnpike"
    'END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnpndx()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxdtbyspdrimp_emgdshktweb_grmlccts"
    
	central "actn" + action_str
	
	'SELECT CASE CVL(action_str)
    'CASE CVL("move")
    '    central "actnmove"
    'CASE CVL("fire")
    '    central "actnfire"
    'CASE CVL("bite")
    '    central "actnbite"
    'CASE CVL("pnch")
    '    central "actnpnch"
    'CASE CVL("kick")
    '    central "actnkick"
    'CASE CVL("dggr")
    '    central "actndggr"
    'CASE CVL("pike")
    '    central "actnpike"
    'CASE CVL("spdr")
    '    central "actnspdr"
    'CASE CVL("web_")
    '    central "actnweb"
    'CASE CVL("vnom")
    '    central "actnvnom"
    'CASE CVL("cure")
    '    central "actncure"
    'CASE CVL("ispt")
    '    central "actnispt"
    'CASE CVL("grpl")
    '    central "actngrpl"
    'CASE CVL("rapl")
    '    central "actnrapl"
    'CASE CVL("seed")
    '    central "actnccts"
    'CASE CVL("wstf")
    '    central "actnwstf"
    'CASE CVL("wing")
    '    central "actnwing"
    'CASE CVL("key1")
    '    central "actnkey1"
    'CASE CVL("key2")
    '    central "actnkey2"
    'END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnccts()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = ""
    here_str = "watr"
    central "here"
    IF here_si > 0 THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "hole"
    END IF
    here_str = "stpw"
    central "here"
    IF here_si > 0 THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "stps"
    END IF
    
	select case action_str
	case "seed"
        central "actnccts"	
	case else
		central "actn" + action_str	
	end select

    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnbldr()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = ""
    IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "hole" THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "dirt"
        central "gone"
        Exit Sub
    END IF
    IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "watr" THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "stpw"
        central "gone"
        Exit Sub
    END IF
    'SELECT CASE CVL(action_str)
    'END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub cinput ()
    XXmouse_si = XMouse_si
    YYmouse_si = Ymouse_si
    l1b_si = Lb_si
    r1b_si = Rb_si
    'sub cinput
    XXmouse_si = XMouse_si
    YYmouse_si = Ymouse_si
    l1b_si = Lb_si
    r1b_si = Rb_si

    c_str = INKEY

	select case len( c_str )
	case 0
		c_str = "%%"
	case 1
		select case asc( c_str )
		case is < 33
			c_str = "&H" + right$( "00" + hex$( asc( right$( c_str, 1 ) ) ), 2 )
		end select
	case 2	
		select case asc( left$( c_str, 1 ) )
		case &HFF
			c_str = "&HFF" + right$("00" + hex$( asc( right$( c_str, 1 ) ) ), 2 )
		end select
	end select
    
	'STICKS joy0_si, joy1_si, joy2_si, joy3_si, but0_si, but1_si, but2_si, but3_si, but4_si, but5_si, but6_si, but7_si
    'PENS tip0_si, tip1_si, tip2_si, tip3_si, tip4_si, tip5_si, tip6_si, tip7_si, tip8_si, tip9_si
    MouseStatus Lb_si, Rb_si, XMouse_si, Ymouse_si
    'XMouse_si = XMouse_si / 2
    ym_si = INT(Ymouse_si / 8) + 1
    xm_si = INT(XMouse_si / 8) + 1
    jsx_si = 0 'joy0_si - 100
    jsy_si = 0 'joy1_si - 100
    jsa_si = 0 'but0_si
    jsb_si = 0 'but1_si
    IF llb_si <> Lb_si OR (llb_si = 0 AND Lb_si = 0) THEN
        llb_si = Lb_si
        l1b_si = Lb_si
    ELSE
        Lb_si = 0
    END IF
    IF rrb_si <> Rb_si OR (rrb_si = 0 AND Rb_si = 0) THEN
        rrb_si = Rb_si: r1b_si = Rb_si
    ELSE
        Rb_si = 0
    END IF
END SUB

sub cursorput
    
	select case c_str
	case is <> "%%"
        clast_str = c_str
    end select
    
	clv_buffer_cls clv_buffer(), clv_buffer_cursor
    clv_draw_line clv_buffer(), clv_buffer_cursor, XMouse_si - 2, Ymouse_si - 2, XMouse_si + 2, Ymouse_si + 2, rgb(255,255,255), rgb(0,0,0), clv_flag_default
    clv_draw_line clv_buffer(), clv_buffer_cursor, XMouse_si + 2, Ymouse_si - 2, XMouse_si - 2, Ymouse_si + 2, rgb(255,255,255), rgb(0,0,0), clv_flag_default
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_cursor, clv_glyph(), (1-1) shl 3, (1-1) shl 3, str(XMouse_si)+","+trimint(YMouse_si)+","+clast_str
END SUB

sub progress_put (clv_buffer() as fb.image ptr, Index as integer, Caption as string, _
        byref Cur as integer, Max as integer, _
        X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, _
        Switch as integer, ARGB as uinteger, Increment as integer, Progress as string, _
        byref LastSec as double, DelaySec as double)
    dim as integer X3, Y3
    dim as short X1_si, Y1_si, X2_si, Y2_si
    dim as string Progress_Old=Progress
    dim as double Sec=timer
    Cur=Cur+Increment
    Progress=str(fix(Cur*10000/Max))
    if len(Progress)-2<=0 then
        Progress = "0" + right$( "00" + right$( Progress, 2 ), 2 ) + "%"
    else
        Progress = mid$( Progress, 1, len( Progress ) - 2 ) + "." + right$( "00" + right$( Progress, 2 ), 2 ) + "%"
    end if
    
	#ifdef __Keal_Demux__
		if Sec-LastSec>=DelaySec then
			LastSec=Sec-KealDemux_m(DelaySec-KealDemux_m(Sec-LastSec,DelaySec),DelaySec)
		else
	#endif
			Exit Sub
	#ifdef __Keal_Demux__
		end if	
	#endif
	
    if Switch and 1 then
        clv_buffer_cls clv_buffer(), Index
    end if
    X1_si=X1
    Y1_si=Y1
    X2_si=X2
    Y2_si=Y2
    X3=((X1-1) shl 3)+(((X2-X1-1) shl 3)+7)*Cur/Max
    frame_put clv_buffer(), Index, X1_si, Y1_si, X2_si, Y2_si, 0, 0
    clv_draw_line clv_buffer(), Index, (X1-1) shl 3, (Y1-1) shl 3, X3, ((Y2-1) shl 3)+7, ARGB, rgb(0,0,0), clv_flag_bf
    X3=((X1-1) shl 3)+(((X2-X1-1) shl 3)+7)/2-((len(Caption)-1) shl 3)/2
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), X3, (Y1-1) shl 3, Caption
    
    X3=((X1-1) shl 3)+(((X2-X1-1) shl 3)+7)/2-((len(Progress)-1) shl 3)/2
    Y3=((Y1-1) shl 3)+(((Y2-Y1-1) shl 3)+7)/2
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), Index, clv_glyph(), X3, Y3, progress
    
    cinput
    clv_buffer_stack clv_buffer()
end sub

sub graphicput (clv_buffer() as fb.image ptr, Index as integer, byref yy1_si as short, byref xx1_si as short, ss1_str as string, dpath_str as string)
    dim as string ss2_str, ss3_str
    dim as fb.image ptr ColorGraphic, TransparencyGraphic
    IF LEN(ss1_str) = 11 AND ss1_str <> "________.24" THEN
        ss2_str = ss1_str + "y"
        TransparencyGraphic=png_load(thispath_str + dpath_str + ss2_str + ".png")
        'PUT ((xx1_si - 1) * 8, (yy1_si - 1) * 8), gtmp, AND
        ss3_str = ss1_str + "x"
        ColorGraphic=png_load(thispath_str + dpath_str + ss3_str + ".png")
        'PUT ((xx1_si - 1) * 8, (yy1_si - 1) * 8), gtmp, OR
        clv_draw_image clv_buffer(), Index, (xx1_si - 1) * 8, (yy1_si - 1) * 8, ColorGraphic, TransparencyGraphic
        png_destroy ColorGraphic
        png_destroy TransparencyGraphic
    END IF
    IF LEN(ss1_str) <> 11 THEN
        LOCATE yy1_si + 1, xx1_si + 1: PRINT ".";
    END IF
END SUB

sub suspend (byref start_sf as single, byref delay as short)
    DO
        'commands to do while suspended
        cinput
        cursorput
        clv_buffer_stack clv_buffer()
        'netscreenout
    LOOP UNTIL (TIMER < start_sf) OR (TIMER >= start_sf + delay) 'check before ending loop
END SUB

sub cls2
    line(0,0)-(319,239), rgb(0,0,0), bf'pal(0), bf
end sub

sub file_put_contents(filename as string, dat as string)
    dim as integer mode
    mode=freefile
    Open filename For Binary Access write As mode
    put #mode,,dat
    close mode
end sub

function file_get_contents(filename as string) as string
    dim as string ret
    dim as integer mode
    mode=freefile
    Open filename For Binary Access read As mode
    ret=space(lof(mode))
    if not(eof(mode)) and (lof(mode)>0) then
        seek #mode,1
        get #mode,seek(mode),ret
    end if
    close mode
    file_get_contents=ret
end function

sub pal_load( filepath as string, pal( any ) as uinteger )

	redim pal( lbound( VGA_Table, 1 ) to ubound( VGA_Table, 1 ) )
    dim as integer Index = 0

	for Index = lbound( VGA_Table, 1 ) to ubound( VGA_Table, 1 )
		pal( Index ) = VGA_Table( Index )
	next Index
	
end sub

sub MouseStatus (byref LBi AS short, byref RBi AS short, byref Mouse_X AS short, byref Mouse_Y AS short)
    'Ax = 3
    'Mouse_Driver Ax, Bx, Cx, Dx
    dim as integer Ax_li, Bx_li, Cx_li, Dx_li, Mouse_X_li, Mouse_Y_li
    Ax_li=Ax
    Bx_li=Bx
    Cx_li=Cx
    Dx_li=Dx
    GETMOUSE Cx_li,Dx_li,,Bx_li
    Ax=Ax_li
    Bx=Bx_li
    Cx=Cx_li
    Dx=Dx_li
    
    LBi = ((Bx AND 1) <> 0)
    RBi = ((Bx AND 2) <> 0)
    
    Mouse_X_li = ((Cx_li)*Mouse_Width/Display_Width)
    Mouse_Y_li = ((Dx_li)*Mouse_Height/Display_Height)
    Mouse_X=Mouse_X_li
    Mouse_Y=Mouse_Y_li
END SUB

sub clv_buffer_stack (clv_buffer() as fb.image ptr)

    cursorput
    
    clv_buffer_cls clv_buffer(), clv_buffer_draw

    clv_buffer_overlay clv_buffer(), clv_buffer_splash, clv_buffer_draw
    
    select case clv_buffer_focus
    case clv_buffer_title
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
    case clv_buffer_help
        clv_buffer_overlay clv_buffer(), clv_buffer_help, clv_buffer_draw
    case clv_buffer_portal
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
    case clv_buffer_status
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_status, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
    case clv_buffer_expshop
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_expshop, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
    case clv_buffer_merchant
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_merchant, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
    case clv_buffer_playbyplay
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_playbyplay, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_bar, clv_buffer_draw
    end select
    if not (clv_buffer_focus=clv_buffer_splash) then
        clv_buffer_overlay clv_buffer(), clv_buffer_bar, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_progress, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_cursor, clv_buffer_draw
    end if
    line (0,0)-(Display_Width-1,Display_Height-1),rgb(0,0,0),bf
    clv_buffer_flip clv_buffer(), clv_buffer_draw, Display_Width, Display_Height
    screensync
    screencopy 1,0
end sub

sub frame_status(Row as short, Col as short)
    dim as short X1, Y1, X2, Y2, C1, C2
    X1 = Col
    X2 = X1+5*3+1-1
    Y1 = Row
    Y2 = Y1+5+3+1-1
    C1 = 4
    C2 = 12
    frame_put clv_buffer(), clv_buffer_status, X1, Y1, X2, Y2, C1, C2
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (col-1) shl 3, (Row+1-1) shl 3, "LV"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+3-1) shl 3, (Row+1-1) shl 3, RIGHT(STR(100 + G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)), 2)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (col+9-1) shl 3, (Row+1-1) shl 3, (RIGHT("     " + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)), 5) + "$")
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+2-1) shl 3, (Row+1-1) shl 3, "ú"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+2-1) shl 3, "HP"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+4-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 1))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+9-1) shl 3, (Row+2-1) shl 3, "/"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+11-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 11))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+3-1) shl 3, "STR"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+4-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 2))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+9-1) shl 3, (Row+3-1) shl 3, "/"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+11-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 12))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+4-1) shl 3, "ESS"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+4-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 3))), 4)
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+9-1) shl 3, (Row+4-1) shl 3, "/"
    '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+11-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 13))), 4)
    central "getaction"
    SELECT CASE d_si
    CASE 0
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttnself.24", spritepath_str
    CASE 1
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttnnrth.24", spritepath_str
    CASE 2
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttneast.24", spritepath_str
    CASE 3
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttnsuth.24", spritepath_str
    CASE 4
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttnwest.24", spritepath_str
    END SELECT
    graphicput clv_buffer(), clv_buffer_status, Row+5, Col+6, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) + MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) +  ".24"), spritepath_str
    'graphicput clv_buffer(), clv_buffer_status, Row+5, Col+3, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) + "____.24"), spritepath_str
    FOR t_si = 1 TO LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
        R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si - 1) * 4 + 1, 4)
        central "names"
        IF action_str = R_str THEN
            '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+8-1) shl 3, rr_str
        end if
    NEXT t_si
end sub

sub frame_inventory (Row as short, Col as short)
    dim as short X1, Y1, X2, Y2, C1, C2
    dim as short X, Y
    X1 = Col
    X2 = X1+5*3+1-1
    Y1 = Row
    Y2 = Y1+3*3-1
    C1 = 4
    C2 = 12
    frame_put clv_buffer(), clv_buffer_status, X1, Y1, X2, Y2, C1, C2
    central "getaction"
    FOR t_si = 1 TO LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
        X=fix((t_si-1) mod 5)*3
        Y=fix((t_si-1)/5)*3
        R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si - 1) * 4 + 1, 4)
        central "names"
        graphicput clv_buffer(), clv_buffer_status, Row + Y, Col + X, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si*4)-3, 4) + "____.24"), spritepath_str
        IF action_str = R_str THEN
            clv_draw_line clv_buffer(), clv_buffer_status, (statx_si+X-1) shl 3,(14+Y-1) shl 3,((statx_si+X-1) shl 3)+23,((14+Y-1) shl 3)+23, rgb(255,255,255), rgb(0,0,0), clv_flag_b
        end if
    NEXT t_si
end sub

sub frame_title (Row as short, Col as short)
    dim as short X1, Y1, X2, Y2, C1, C2

    clv_buffer_cls clv_buffer(), clv_buffer_title
    
    X1 = Col
    X2 = X1+6
    Y1 = 2
    Y2 = Y1
    C1 = 6
    C2 = 0

    frame_put clv_buffer(), clv_buffer_title, X1, Y1, X2, Y2, C1, C2

    SELECT CASE titled_si
    CASE 0
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_title, clv_glyph(), (statx_si-1) shl 3, (2-1) shl 3, "Puzzlum"
    CASE 1
        '[!]'clv_Draw_Text clv_buffer(), clv_font(), clv_buffer_title, clv_glyph(), (statx_si-1) shl 3, (2-1) shl 3, "(T)itle"
    END SELECT

end sub

sub frame_put (clv_buffer() as fb.image ptr, Index as integer, X1 as short, Y1 as short, X2 as short, Y2 as short, C1 as short,C2 as short)
    dim as integer A(1 to 2,1 to 2), X=1, Y=2

    A(X,1)=((X1-1) shl 3)-1
    A(X,2)=(X2 shl 3)
    A(Y,1)=((Y1-1) shl 3)-1
    A(Y,2)=(Y2 shl 3)
    
    clv_draw_line clv_buffer(), Index, A(X,1), A(Y,1), A(X,2), A(Y,2), rgb(0,0,0), rgb(0,0,0), clv_flag_bf
    clv_draw_line clv_buffer(), Index, A(X,1), A(Y,1)-2, A(X,2), A(Y,2)+2, rgb(131,131,131), rgb(0,0,0), clv_flag_b
    clv_draw_line clv_buffer(), Index, A(X,1)-2, A(Y,1), A(X,2)+2, A(Y,2), rgb(131,131,131), rgb(0,0,0), clv_flag_b
    clv_draw_line clv_buffer(), Index, A(X,1)-1, A(Y,1)-1,A(X,2)+1,A(Y,2)+1, rgb(192,192,192), rgb(0,0,0), clv_flag_b
    clv_draw_pixel clv_buffer(), Index, A(X,1)-1, A(Y,1)-1, rgb(131,131,131), rgb(0,0,0)
    clv_draw_pixel clv_buffer(), Index, A(X,2)+1, A(Y,2)+1, rgb(131,131,131), rgb(0,0,0)
    clv_draw_pixel clv_buffer(), Index, A(X,1)-1, A(Y,2)+1, rgb(131,131,131), rgb(0,0,0)
    clv_draw_pixel clv_buffer(), Index, A(X,2)+1, A(Y,1)-1, rgb(131,131,131), rgb(0,0,0)
end sub

sub clv_glyph_ini  (clv_glyph() as integer)
    dim Glyph as integer
    for Glyph=lbound(clv_glyph,1) to ubound(clv_glyph,1)
        if (((Glyph>=32) and (Glyph<=126)) or Glyph=250 or Glyph=254) and not(((Glyph>=65) and (Glyph<=90)) or ((Glyph>=97) and (Glyph<=122))) then
            clv_glyph(Glyph,0)=1
        end if
        'if Glyph>=97 and Glyph<=122 then
        '    clv_glyph(Glyph,1)=Glyph-32
        'else
            clv_glyph(Glyph,1)=Glyph
        'end if
    next
end sub

sub input_text (Index as integer, Src as integer, Row as short, Col as short, W as short, H as short, byref Text_str as string)
    do
        clv_buffer_copy clv_buffer(), Src, Index
        frame_put clv_buffer(), Index,Row,Col,Row,Col,7,15
        cinput
        clv_buffer_stack clv_buffer()
        select case c_str
        case "&HFF0D"
            exit do
        end select
    loop
end sub

sub Map_Load ( Save_Table( any ) as names_type )
	
    dim as integer X,Y, X1=5, Y1=10, X2=35, Y2=15, Cur=0, Max=161, Index2=clv_buffer_progress, Index = 0
    dim as double DelaySec=progress_delay, LastSec=timer-DelaySec
    dim as string Caption="Loading Map", progress=space(0)
    dim as uinteger ARGB, Switch=1
    
    dim as string label=space(0),value=space(0),ret=space(0),mapname=space(0)
    
    ARGB=rgb(96,32,255)
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 0, progress, LastSec, DelaySec

    'map name
    mapname= sync_names( "mapname_str", Save_Table() )
    Caption=Caption+" "+chr(34)+mapname_str+chr(34)
    'map dimensions width
    AA_si= val( sync_names( "AA_si", Save_Table() ) )
    'map dimensions height
    DD_si= val( sync_names( "DD_si", Save_Table() ) )
    Max=Max+AA_si*DD_si*23
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 3, progress, LastSec, DelaySec

    'directional axis matrix
    for X=0 to 4
        for Y=1 to 2
            d_sia(X,Y)= val( sync_names( "d_sia["+trimint(X)+"]["+trimint(Y)+"]", Save_Table() ) )
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec

    'map pointer x
    ex_si= val( sync_names( "ex_si", Save_Table() ) )
    'map pointer y
    dy_si= val( sync_names( "dy_si", Save_Table() ) )
    'screen cursor x
    mdx_si= val( sync_names( "mdx_si", Save_Table() ) )
    'screen cursor y
    mdy_si= val( sync_names( "mdy_si", Save_Table() ) )
        
    'text color
    textcolor_si= val( sync_names( "textcolor_si", Save_Table() ) )
    'text delay
    textdelay_sf= val( sync_names( "textdelay_sf", Save_Table() ) )
    
    'current window
    win_si= val( sync_names( "win_si", Save_Table() ) )
    '[!!!]'progress_put clv_buffer(), Index, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 7, progress, LastSec, DelaySec

    for Y=0 to 4
        for X=1 to 2
            d_sia(Y,X)= val( sync_names( "d_sia["+trimint(Y)+"]["+trimint(X)+"]", Save_Table() ) )
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec

    FOR X = 0 TO win_si
        for Y=1 to 2
            win_sia(Y + (X - 1) * 2)= val( sync_names( "win_sia["+trimint(X)+"]["+trimint(Y)+"]", Save_Table() ) )
        next
    NEXT
    Max=Max+(win_si+1)*2
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, (win_si+1)*2, progress, LastSec, DelaySec

    'level up data
    FOR t_si = 0 TO 64
        for X=1 to 2
            l_sia(t_si)= val( sync_names( "l_sia["+trimint(t_si)+"]", Save_Table() ) )
        next
    NEXT

    ctrl_str= sync_names( "ctrl_str", Save_Table() )
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 131, progress, LastSec, DelaySec
        
    FOR Ty_si = 1 TO DD_si
        FOR Tx_si = 1 TO AA_si
            e_stra(Rose_Calc( Tx_si, Ty_si ), 0)= sync_names( "prflidty_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            e_stra(Rose_Calc( Tx_si, Ty_si ), 1)= sync_names( "prflactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            mid(e_stra(Rose_Calc( Tx_si, Ty_si ), 2),1,4)= sync_names( "prflgpic_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            e_stra(Rose_Calc( Tx_si, Ty_si ), 3)= sync_names( "prflcmnd_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            e_stra(Rose_Calc( Tx_si, Ty_si ), 4)= sync_names( "prflgpicactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            e_stra(Rose_Calc( Tx_si, Ty_si ), 5)= sync_names( "prflactnct_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            progress_put clv_buffer(), Index, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 6, progress, LastSec, DelaySec

            G_dfa(Rose_Calc( Tx_si, Ty_si ), 0)= val( sync_names( "prflidty_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 1)= val( sync_names( "prflhpcur_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2)= val( sync_names( "prflstrcur_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3)= val( sync_names( "prflesscur_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 4)= val( sync_names( "prflstrspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 5)= val( sync_names( "prflarmr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)= val( sync_names( "prflexp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 7)= val( sync_names( "prflvalu_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 8)= val( sync_names( "prflpirc_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 9)= val( sync_names( "prflchck_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)= val( sync_names( "prfllv_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 11)= val( sync_names( "prflhpmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 12)= val( sync_names( "prflstrmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 13)= val( sync_names( "prflessmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 14)= val( sync_names( "prflessspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 15)= val( sync_names( "prflevad_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 16)= val( sync_names( "prflblnk_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 17, progress, LastSec, DelaySec
        NEXT
    NEXT
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 0, progress, LastSec, 0.0
    sleep 1
    clv_buffer_cls clv_buffer(), Index2
end sub

sub Map_Save ( Save_Table( any ) as names_type)
    dim as integer X,Y, X1=5, Y1=10, X2=35, Y2=15, Cur=0, Max=161, Index2=clv_buffer_progress
    dim as double DelaySec=progress_delay, LastSec=timer-DelaySec
    dim as integer queue_max=0
    dim as string Caption="Saving Map "+chr(34)+mapname_str+chr(34), progress=space(0)
    dim as uinteger ARGB, Switch=1
    ARGB=rgb(96,32,255)
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 0, progress, LastSec, DelaySec
    
    wipe_table( queue_table() )
    
    dim as uinteger fail=0,index=0,octet=0,biet=0
    dim as string ret=space(0)
    
    push_names( "mapname_str", mapname_str, Save_Table() ) 'map name
    push_names( "AA_si", trimint(AA_si), Save_Table() ) 'map dimensions width
    push_names( "DD_si", trimint(DD_si), Save_Table() ) 'map dimensions height
    Max=Max+AA_si*DD_si*23
    
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 3, progress, LastSec, DelaySec

    'directional axis matrix
    for X=0 to 4
        for Y=1 to 2
            push_names("d_sia["+trimint(X)+"]["+trimint(Y)+"]",trimint(d_sia(X,Y)),Save_Table())
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec

    push_names("ex_si",trimint(ex_si),Save_Table()) 'map pointer x
    push_names("dy_si",trimint(dy_si),Save_Table()) 'map pointer y
    push_names("mdx_si",trimint(mdx_si),Save_Table()) 'screen cursor x
    push_names("mdy_si",trimint(mdy_si),Save_Table()) 'screen cursor y
        
    push_names("textcolor_si",trimint(textcolor_si),Save_Table()) 'screen cursor y
    push_names("textdelay_sf",trimint(textdelay_sf),Save_Table()) 'screen cursor y
    
    push_names("win_si",trimint(win_si),Save_Table()) 'screen cursor y
    Max=Max+(Win_si+1)*2
    queue_max=Max
    redim preserve queue(0 to queue_max) as names_type
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 7, progress, LastSec, DelaySec

    for Y=0 to 4
        for X=1 to 2
            push_names("d_sia["+trimint(Y)+"]["+trimint(X)+"]",trimint(d_sia(Y,X)),Save_Table())
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec
    
    FOR X = 0 TO win_si
        for Y=1 to 2
            push_names("win_sia["+trimint(X)+"]["+trimint(Y)+"]",trimint(win_sia(Y + (X - 1) * 2)),Save_Table())
        next
    NEXT
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, (win_si+1)*2, progress, LastSec, DelaySec

    'level up data
    FOR t_si = 0 TO 64
        for X=1 to 2
            push_names("l_sia["+trimint(t_si)+"]",trimint(l_sia(t_si)),Save_Table())
        next
    NEXT
    
    push_names("ctrl_str", ctrl_str,Save_Table())
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 131, progress, LastSec, DelaySec

    FOR Ty_si = 1 TO DD_si
        FOR Tx_si = 1 TO AA_si
            push_names("prflidty_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 0),Save_Table())
            push_names("prflactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 1),Save_Table())
            push_names("prflgpic_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",mid(e_stra(Rose_Calc( Tx_si, Ty_si ), 2),1,4),Save_Table())
            push_names("prflcmnd_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 3),Save_Table())
            push_names("prflgpicactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 4),Save_Table())
            push_names("prflactnct_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 5),Save_Table())
            progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 6, progress, LastSec, DelaySec

            push_names("prflidty_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 0)),Save_Table())
            push_names("prflhpcur_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 1)),Save_Table())
            push_names("prflstrcur_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 2)),Save_Table())
            push_names("prflesscur_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 3)),Save_Table())
            push_names("prflstrspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 4)),Save_Table())
            push_names("prflarmr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 5)),Save_Table())
            push_names("prflexp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)),Save_Table())
            push_names("prflvalu_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 7)),Save_Table())
            push_names("prflpirc_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 8)),Save_Table())
            push_names("prflchck_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 9)),Save_Table())
            push_names("prfllv_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)),Save_Table())
            push_names("prflhpmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 11)),Save_Table())
            push_names("prflstrmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 12)),Save_Table())
            push_names("prflessmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 13)),Save_Table())
            push_names("prflessspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 14)),Save_Table())
            push_names("prflevad_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 15)),Save_Table())
            push_names("prflblnk_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 16)),Save_Table())
            progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 17, progress, LastSec, DelaySec
        NEXT
    NEXT
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 0, progress, LastSec, 0.0
	'[..]'merge_names( Save_Table(), Save_table() )
    sleep 1
    clv_buffer_cls clv_buffer(), Index2
end sub


sub savegame_save( filename as string = "" )
'case "&HFF3B" 'F1 (save savegame)
    	    	
    Map_Save Save_Table()
    
	save_names( filename, Save_Table() )

end sub

sub savegame_load( filename as string = "" )
'case "&HFF3C" 'F2 (load savegame)

	load_names_from_file( filename, Save_Table() )
    
	Map_Load Save_Table()

end sub

function Compare_Key( KeyPress as string = "", Comparison as string = "", Input_Table( any ) as names_type ) as integer

	wipe_table Bundle_Table()
	load_names_from_file ".\gamedata\Bundle.dat", Bundle_Table()

	wipe_table Input_Table()
	load_names_from_file sync_names( "input/filename", Bundle_Table() ), Input_Table()
		
	KeyPress = KeySet( KeyPress )
	Comparison = KeySet( sync_names( Comparison, Input_Table() ) )
	
	locate 1,50
	print KeyPress

	locate 3,50	
	print Comparison
	
	flip
	
	if KeyPress = mkl( 27 ) then outro
	
	select case not( 0 )
	case Comparison = KeyPress
		Compare_Key = not( 0 )
	case else
		Compare_Key = 0
	end select
	
end function

function stripquotes( subject as string = "" ) as string

	select case ( left$( subject, len( quot ) ) = quot ) and ( right$( subject, len( quot ) ) = quot )
	case not( 0 )
	
		subject = mid$( subject, len( quot ) + 1, len( subject ) - len( quot ) shl 1 )
		
	end select
		
	stripquotes = subject
	
end function

function KeySet( subject as string = "%%" ) as string

	if len( subject ) = 0 then
		subject = "%%"
		exit function
	end if

	subject = stripquotes( subject )
	
	select case not( 0 )
	case subject = "%%"
		
		KeySet = subject
		exit function
		
	case left$( subject, 2 ) = "&H"
		subject = mid$( subject, 3 )
		subject = string$( 8 - len( subject ), 0 ) + subject
	end select
	
	select case len(subject)
	case 1
		subject = right$( hex$( asc( subject ) ), 2 )
		subject = string$( 8 - len( subject ), 0 ) + subject
	end select
	
	KeySet = subject

end function

function Rose_Calc( Tx_si as integer = 0, Ty_si as integer = 0 ) as integer
		
	Rose_Calc = Tx_si + (Ty_si - 1) * AA_si
	
end function

function Rose_Direct( byref X as integer = 0, byref Y as integer = 0, Card as integer = 0, Range as integer = 0 ) as integer

	X += d_sia(Card, 1 ) * Range

	Y += d_sia(Card, 2 ) * Range
	
	if X < 0 then
		X = 1
	end if
	
	if X > AA_si then
		X = AA_si
	end if
	
	if Y < 0 then
		Y = 1
	end if
	
	if Y > DD_si then
		Y = DD_si
	end if

	Rose_Direct = X + ( Y - 1 ) * AA_si
	
end function


function wait_key() as string

	dim as string cis = ""
	
	while len( cis ) = 0
		cis = inkey
	wend

	wait_key = cis

	if cis = chr$( 27 ) then outro
	
end function


sub text_out( subject as string = "" )
	print subject
end sub

function make_keys() as string
	
	dim as string keys = string$( 0, 0 )
	dim as integer index = 0, count = 0
	
	count = val( sync_names("function/key/count",Bundle_Table() ) )
	
	for index = 1 to count step 1
		
		if index = 1 then
			keys += "["
		end if
		
		keys += "(" + "F" + As_String( index ) + ")" + sync_names( "function/key/" + As_String( index ), Bundle_Table() )
		
		if index < count then
			keys += "|"
		end if
		
		if index = count then
			keys += "]"
		end if
		
	next index
	
	make_keys = keys
	
end function

function cleantag( tag as string = "____" ) as string
	
	dim as string crtn_temp = string$( 0, 0 )
	
	crtn_temp = Entity_Shortname( tag )
	
	do while right( crtn_temp, 1 ) = "_"
		crtn_temp = left$( crtn_temp, len( crtn_temp ) - 1 )
	loop

	if len( crtn_temp ) = 0 then
		crtn_temp = "blnk"
	end if

	cleantag = crtn_temp

end function

sub battle()

	dim as integer Target_X = Tx_si + d_sia( d_si, 1 ) * dis_si
	dim as integer Target_Y = Ty_si + d_sia( d_si, 1 ) * dis_si
	dim as integer Target_Pos = Rose_Calc( Target_X, Target_Y )

	dim as integer Self_X = Tx_si
	dim as integer Self_Y = Ty_si
	dim as integer Self_Pos = Rose_Calc( Self_X, Self_Y )
    
	hp_cur_si = G_dfa(Self_Pos, 1)
    str_cur_si = G_dfa(Self_Pos, 2)
    ess_cur_si = G_dfa(Self_Pos, 3)
	
	'dim shared as single hp_use_si = 0
    'dim shared as single str_use_si = 0
    'dim shared as single ess_use_si = 0

	if ( str_cur_si < str_use_si ) or ( ess_cur_si < ess_use_si ) then
        
		MID(e_stra(Self_Pos, 4), 1, 4) = "____"
        MID(e_stra(Self_Pos, 4), 5, 4) = "____"
		
		exit sub
		
	end if
	
	MID(e_stra(Self_Pos, 4), 1, 4) = attk_pict_str
	MID(e_stra(Self_Pos, 4), 5, 4) = attk_name_str
	
	G_dfa(Self_Pos, 1) -= hp_use_si

	G_dfa(Self_Pos, 2) -= str_use_si
	
	G_dfa(Self_Pos, 3) -= ess_use_si
		
	evadeattack = G_dfa( Target_Pos, 15)

	evadeattack = evadeattack + RND(1) * (1 - evadeattack)

	attackblocked = hp_dmg_si * (evadeattack) - G_dfa( Rose_Calc( Target_X, Target_Y ), 5)
	
	IF attackblocked < 0 THEN attackblocked = 0
	
	hp_dmg_si = hp_dmg_si * (1 - evadeattack) + attackblocked
	
	G_dfa( Target_Pos, 1) -= hp_dmg_si
	
	central_call "battleattack"

	select case not(0)
	case G_dfa( Target_Pos, 1) <= 0
		
		central_call "victory"
	
	end select

    Exit Sub

	
	'if Rose = -1 then
	'	Rose = fix( rnd( 1 ) * 5 )
	'end if
	'
	'if Range = -1 then
	'	Range = fix( rnd( 1 ) * 4 )
	'end if
	'
	'dim as string attk = string$( 0,0 )
	'
	'attk = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4)
	'
	'select case sync_names( "attk/"+cleantag( MID( e_stra( Rose_Calc( Tx_si, Ty_si ), 3 ), 5, 4 ) )+"/valid", Attack_Table() )
	
	'case "%%"
	'	MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
	'	MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
	'case else
	'	central "attk_table", attk
	'end select
	
end sub

sub load_afflictions()
	
	dim as string Afflictions = string$( 0, 0 )
	
	redim as names_type Afflictions_Table( any )
	redim as names_type Bunle_Table( any )
	
	wipe_table Afflictions_Table()
	wipe_table Bundle_Table()
	
	load_names_from_file ".\gamedata\Bundle.dat", Bundle_Table()
	
	Afflictions = sync_names_using_default( "afflictions", "", Bundle_Table() )
	load_names_from_buffer( Afflictions, Afflictions_Table(), ";", eq )
	save_names( ".\gamedata\Dynamic\Afflictions.dat", Afflictions_Table() )

end sub