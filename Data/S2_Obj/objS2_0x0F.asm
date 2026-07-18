; ===========================================================================
; ----------------------------------------------------------------------------
; Object 0F - Title screen menu
; ----------------------------------------------------------------------------
; Sprite_13600:
;Obj0F:
Obj8B:
	moveq	#0,d0
	move.b	Obj_Routine(a0),d0
	move.w	Obj8B_Index(pc,d0.w),d1
	jsr	Obj8B_Index(pc,d1.w)
	jmp	DisplaySprite
; ===========================================================================
; off_13612: Obj0F_States:
Obj8B_Index:	offsetTable
		offsetTableEntry.w Obj8B_Init	; 0
		offsetTableEntry.w Obj8B_Main	; 2
; ===========================================================================
; loc_13616:
Obj8B_Init:
	addq.b	#2,Obj_Routine(a0) ; => Obj0F_Main
	move.w	#$128,Obj_X(a0)
	move.w	#$148,Obj_Y(a0)
	move.l	#Obj8B_MapUnc_13B70,Obj_Map(a0)
	move.w	#$0010,Obj_Art_VRAM(a0)
	andi.b	#1,(Title_Screen_Menu_Cursor).w
	move.b	(Title_Screen_Menu_Cursor).w,Obj_Map_Id(a0)

; loc_13644:
Obj8B_Main:
	moveq	#0,d2
	move.b	(Title_Screen_Menu_Cursor).w,d2
	btst	#0,(Control_Ports_Buffer_Data+1).w	;press up?
	bne.s	Obi8B_ButtonUpPressed				;if yes, move selection
	btst	#0,(Control_Ports_Buffer_Data+$0003).w		;controller 2 variant
	bne.s	Obi8B_ButtonUpPressed
	bra.s	Obi8B_ButtonUpNotPressed
Obi8B_ButtonUpPressed:
	move.w	#Switch_Blip_Sfx,d0 ; selection blip sound
	jsr	Play_Music
	subq.b	#1,d2
	bcc.s	Obi8B_ButtonUpNotPressed
	;move.b	#1,d2
	;tst.b	(Level_Select_Flag).w ; check if level select code is on
	;beq.w	Obi8B_ButtonUpNotPressed	; if no, then no access to level select
	move.b	#2,d2
Obi8B_ButtonUpNotPressed:
	btst	#1,(Control_Ports_Buffer_Data+1).w	;press down?
	bne.s	Obi8B_ButtonDownPressed				;if yes, move selection
	btst	#1,(Control_Ports_Buffer_Data+$0003).w
	bne.s	Obi8B_ButtonDownPressed
	bra.s	Obi8B_ButtonDownNotPressed
Obi8B_ButtonDownPressed:
	move.w	#Switch_Blip_Sfx,d0 ; selection blip sound
	jsr	Play_Music
	addq.b	#1,d2
	;tst.b	(Level_Select_Flag).w ; check if level select code is on
	;bne.w	Obj8B_LevelSelectEnabled	; if yes, then access to level select
	;cmpi.b	#2,d2
	;blo.s	Obi8B_ButtonDownNotPressed
	;moveq	#0,d2
Obj8B_LevelSelectEnabled:
	cmpi.b	#3,d2
	blo.s	Obi8B_ButtonDownNotPressed
	moveq	#0,d2
Obi8B_ButtonDownNotPressed:
	move.b	d2,Obj_Map_Id(a0)
	move.b	d2,(Title_Screen_Menu_Cursor).w
	rts
; ===========================================================================
Obj8B_MapUnc_13B70:	include "obj8B.asm"