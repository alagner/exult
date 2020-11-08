cmake_minimum_required(VERSION 3.5)

set(EXULT_FLX_OBJECTS
	flx.in			
	quotes.txt		
	credits.txt		
	exult_logo.shp		
	exult0.pal		
	meditown.mid		
	font.shp		
	fonton.shp		
	navfont.shp		
	navfonton.shp		
	pointers.shp		
	extras.shp		
	notebook.shp		
	stats_extra.shp		
	savegump.shp		
	sav_downdown.shp	
	sav_down.shp		
	sav_up.shp		
	sav_upup.shp		
	sav_slider.shp		
	sav_selected.shp	
	gameplayoptions.shp	
	gamemenu.shp		
	audiooptions.shp	
	videooptions.shp	
	miscoptions.shp		
	hp_bar.shp		
	sfx_icon.shp		
	mtgm.mid			
	sb_combat.shp 
	sb_disk.shp 
	sb_jawbone.shp 
	sb_keyring.shp 
	sb_spellbook.shp 
	sb_target.shp 
	sb_food.shp 
	sb_key.shp 
	sb_maps.shp 
	sb_notebook.shp 
	sb_backpack.shp 
	transparentmenu.shp 
	exultmsg.txt 
	exultmsg_de.txt 
	exultmsg_es.txt 
	exultmsg_fr.txt
)	

set (EXULT_BG_FLX_OBJECTS
	bg/flx.in 
	bg/BGmap.shp 
	bg/defaultkeys.txt	
	bg/mr_faces.shp 
	bg/u7menupal.pal 
	bg/bg_paperdol.vga 
	bg/bg_mr_faces.vga 
	bg/bodies.txt 
	bg/paperdol_info.txt 
	bg/shape_files.txt 
	bg/avatar_data.txt 
	bg/shape_info.txt 
	bg/blends.dat 
	bg/container.dat 
	bg/autonotes.txt 
	bg/intro_hand.shp
)

set(EXULT_SI_FLX_OBJECTS
	si/flx.in 
	si/SImap.shp 
	si/defaultkeys.txt 
	si/bodies.txt 
	si/paperdol_info.txt 
	si/shape_files.txt 
	si/avatar_data.txt 
	si/shape_info.txt 
	si/blends.dat 
	si/container.dat 
	si/autonotes.txt
)

set(EXULT_BG_PAPERDOL_VGA_OBJECTS
	bg/amulets.shp 
	bg/bgfiredoom.shp 
	bg/bluedress.shp 
	bg/caddellite_helmet.shp 
	bg/cleaver.shp 
	bg/custom_sword.shp 
	bg/death_scythe.shp 
	bg/dupre_face.shp 
	bg/fellowshipstaff.shp 
	bg/fem_av_face.shp 
	bg/firesword.shp 
	bg/firewand.shp 
	bg/gorget.shp 
	bg/great_dagger.shp 
	bg/greaves.shp 
	bg/greencloak.shp 
	bg/greentop.shp 
	bg/greycloak.shp 
	bg/hawk.shp 
	bg/hoe_of_destruction.shp 
	bg/hoods.shp 
	bg/iolo_face.shp 
	bg/jaana_face.shp 
	bg/julia_face.shp 
	bg/katrina_face.shp 
	bg/knife.shp 
	bg/lightning_whip.shp 
	bg/magic_boomerang.shp 
	bg/magic_helmet.shp 
	bg/main_gauche.shp 
	bg/male_av_face.shp 
	bg/musket.shp 
	bg/musket_ammo.shp 
	bg/orangedress.shp 
	bg/pants.shp 
	bg/ring_of_protection.shp 
	bg/sentri_face.shp 
	bg/shamino_face.shp 
	bg/shoes.shp 
	bg/spark_face.shp 
	bg/spiked_shield.shp 
	bg/starburst.shp 
	bg/throwing_axe.shp 
	bg/triple_xbow.shp 
	bg/tseramed_face.shp 
	bg/swamp_boots.shp 
	bg/spellbook.shp 
	bg/av_costume.shp 
	bg/oil_flask.shp 
	bg/love_arrows.shp 
	bg/magebane.shp 
	bg/shieldbacks.shp 
	bg/diaper.shp 
	bg/bg_paperdol.in
)

set(EXULT_BG_MR_FACES_VGA_OBJECTS
	bg/mr_faces.shp 
	bg/u7menupal.pal 
	bg/bg_mr_faces.in
)

set(ESTUDIO_NEW_FILES
	estudio/new/combos.flx 
	estudio/new/faces.vga 
	estudio/new/gumps.vga 
	estudio/new/palettes.flx 
	estudio/new/paperdol.vga 
	estudio/new/shapes.vga 
	estudio/new/sprites.vga 
	estudio/new/text.flx 
	estudio/new/fonts.vga 
	estudio/new/pointers.shp 
	estudio/new/blends.dat
)

set(EXULT_FLX_SOURCES
	${EXULT_FLX_OBJECTS}
	${CMAKE_CURRENT_SOURCE_DIR}/flx.in
)

#To be checked if this should be used 
#instead of custom target in more complex
#contexts, e.g. cross compilation.
#add_custom_command(
#	OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/exult.flx
#	MAIN_DEPENDENCY $<TARGET_FILE:expack> 
#	DEPENDS ${EXULT_FLX_OBJECTS}
#	COMMAND $<TARGET_FILE_NAME:expack> -i ${CMAKE_CURRENT_SOURCE_DIR}/flx.in
#	WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
#)

add_custom_target(exult_flx
	$<TARGET_FILE_NAME:expack> -i ${CMAKE_CURRENT_SOURCE_DIR}/flx.in
	COMMAND ${CMAKE_COMMAND} -E rename ${CMAKE_CURRENT_SOURCE_DIR}/exult.flx ${CMAKE_CURRENT_BINARY_DIR}/exult.flx
	DEPENDS expack 
	BYPRODUCTS ${CMAKE_CURRENT_SOURCE_DIR}/exult.flx
	SOURCES ${EXULT_FLX_SOURCES}
)



