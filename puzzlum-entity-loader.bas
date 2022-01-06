#define puzzlum_entity_loader_lib

'puzzlum-entity-loader.bas
'Puzzlum - Entity Loader
'
'Copyright (C) 2009, 2021 Timothy Robert Keal
'
'Released under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'website: http://puzzlum.com/
'mailto: trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once ".\inc\central-debug.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\CLV.bi"

	#include once ".\inc\puzzlum-subs.bi"
	#include once ".\inc\puzzlum-vars.bi"

sub Entity_Loader ()
			select case rfg_str
            case "____"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_sf = rid_sf
				
                central_call "prflset"
            case "spdr"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Spider"
				
				'prflactn_str = "movebiteweb_"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                
				'prflgpic_str = "spdr"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 10
                'prflstrcur_sf = 20
                'prflstrspd_sf = 1
                'prflarmr_sf = 1
                'prflvalu_sf = 5
                'prflpirc_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 10
                'prflstrmax_sf = 20
                'prflessmax_sf = 380
                'prflessspd_sf = 3
				
                SELECT CASE mapname_str
                CASE "0001"
                    IF prflidty_sf = 1 THEN
                        prflactn_str = prflactn_str + "vnom"
                        prflactnct_str = prflactnct_str+mkl(1)
                    END IF
                END SELECT
				
                central_call "prflset"
            case "wall"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "wall"
                'prflgpic_str = "wall"
                'prflidty_sf = 2
				
                central_call "prflset"
            case "web_"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Web"
                
				'prflactn_str = "spdr"
                'prflactnct_str = mkl(1)
                
				
				'prflgpic_str = "web_"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 40
                'prflstrcur_sf = 50
                'prflstrspd_sf = 1
                'prflvalu_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 40
                'prflstrmax_sf = 50
                'prflessmax_sf = 380
                'prflessspd_sf = 2
                
				central_call "prflset"
            case "grml"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Gremlin"
                
				'prflactn_str = "movebitepnch"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)

				IF RND(1) > .2 THEN
                    prflactn_str = prflactn_str + "dggr"
                    prflactnct_str = prflactnct_str+mkl(1)
                END IF
                'prflgpic_str = "grml"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 25
                'prflstrcur_sf = 90
                'prflstrspd_sf = 1
                'prflarmr_sf = 1
                'prflvalu_sf = 5
                'prflpirc_sf = 2
                'prfllv_sf = 1
                'prflhpmax_sf = 25
                'prflstrmax_sf = 90
				
                central_call "prflset"
            case "pndx"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Poindexter"
                'prflactn_str = "wstf"
                'prflgpic_str = "pndx"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 30
                'prflstrcur_sf = 90
                'prflesscur_sf = 0
                'prflstrspd_sf = 3
                'prflarmr_sf = 2
                'prflexp_sf = 10
                'prflvalu_sf = 15
                'prflpirc_sf = 2
                'prfllv_sf = 1
                'prflhpmax_sf = 30
                'prflstrmax_sf = 90
                'prflessmax_sf = 30
                'prflessspd_sf = .1
                'prflevad_sf = .07
                
				central_call "prflset"
            case "dtby"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Dust Bunny"

                'prflactn_str = "movebitekickdtbydust"
                
				'prflgpic_str = "dtby"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 15
                'prflstrcur_sf = 20
                'prflesscur_sf = 5
                'prflstrspd_sf = 1.2
                'prflvalu_sf = 2
                'prfllv_sf = 1
                'prflhpmax_sf = 15
                'prflstrmax_sf = 20
                'prflessmax_sf = 280
                'prflessspd_sf = 1
                
				central_call "prflset"
            case "shkt"
                central_call "prflblnk"
                
				Entity_Action
				
				'prflidty_str = "Shiny Knight"
                
				'prflactn_str = "movepnchdggr"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                
				'prflgpic_str = "shkt"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 45
                'prflstrcur_sf = 110
                'prflstrspd_sf = 1
                'prflarmr_sf = 4
                'prflvalu_sf = 17
                'prflpirc_sf = 3
                'prfllv_sf = 1
                'prflhpmax_sf = 45
                'prflstrmax_sf = 110
                'prflessmax_sf = 12
                'prflevad_sf = .12
				
                central_call "prflset"
            case "emgd"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Emerald Guard"
                
				'prflactn_str = "movepnchdggr"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                
				rr_sf = RND(1)
                IF rr_sf > .1 AND rr_sf <= .4 THEN
                    prflactn_str = prflactn_str + "dggr"
                    prflactnct_str = prflactnct_str+mkl(1)
                END IF
                IF rr_sf > .4 AND rr_sf <= 1 THEN
                    prflactn_str = prflactn_str + "pike"
                    prflactnct_str = prflactnct_str+mkl(1)
                END IF
                
				'prflgpic_str = "emgd"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 40
                'prflstrcur_sf = 140
                'prflstrspd_sf = 2
                'prflarmr_sf = 5
                'prflvalu_sf = 17
                'prflpirc_sf = 3
                'prfllv_sf = 1
                'prflhpmax_sf = 40
                'prflstrmax_sf = 140
                'prflevad_sf = .2
                
				central_call "prflset"
            case "door"
                central_call "prflblnk"

				Entity_Action

                'prflidty_str = "Wooden Door"
                'prflgpic_str = "door"
                
                select case left$(rid_str,3)
                case "loc"
					select case val( right$( rid_str, 1 ) )
					case 1 to 3
						prflactn_str = rid_str
						prflactnct_str = mkl(1)
					end select
                end select

                'prflidty_sf = rid_sf
                'prflhpcur_sf = 140
                'prflstrcur_sf = 140
                'prflarmr_sf = 5
                'prflvalu_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 140
                'prflstrmax_sf = 140
                
				central_call "prflset"
            case "chst"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Treasure Chest"
                'prflgpic_str = "chst"
                
				select case left$(rid_str,3)
                case "loc"
					select case val( right$( rid_str, 1 ) )
					case 1 to 3
						prflactn_str = rid_str
						prflactnct_str = mkl(1)
					end select
                end select
                
				'prflidty_sf = rid_sf
                'prflhpcur_sf = 140
                'prflstrcur_sf = 140
                'prflarmr_sf = 5
                'prflvalu_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 140
                'prflstrmax_sf = 140
                
				central_call "prflset"
            case "imp_"
                central_call "prflblnk"

				Entity_Action

                'prflidty_str = "Little Imp"
                
				'prflactn_str = "movewingfire"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                
				IF INT(RND(1) * 2) + 1 = 2 THEN
                    prflidty_str = "Merchant"
                    prflactn_str = prflactn_str + "dggrgrplseed"
                    prflactnct_str = prflactnct_str+mkl(1)+mkl(1)+mkl(1)
                END IF
                
				'prflgpic_str = "imp_"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 30
                'prflstrcur_sf = 30
                'prflesscur_sf = 30
                'prflstrspd_sf = 5
                'prflarmr_sf = 1
                'prflvalu_sf = 24
                'prflpirc_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 30
                'prflstrmax_sf = 30
                'prflessmax_sf = 90
                'prflessspd_sf = 3
                'prflevad_sf = .3
                
				central_call "prflset"
            case "chst"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Treasure chest"
                
				IF INT(RND(1) * 2) = 1 THEN
                    prflactn_str = "key1"
                    prflactnct_str = mkl(1)
                ELSE
                    prflactn_str = "key2"
                    prflactnct_str = mkl(1)
                END IF
				
                'prflgpic_str = "chst"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 100
                'prfllv_sf = 1
                'prflhpmax_sf = 100
                
				central_call "prflset"
            case "bldr"
				central_call "prflblnk"
                
				Entity_Action
                
				'prflidty_str = "Big boulder"
                'prflactn_str = ""
                'prflgpic_str = "bldr"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 1000
                'prflarmr_sf = 10
                'prfllv_sf = 1
                'prflhpmax_sf = 1000
                
				central_call "prflset"
			end select
end sub
