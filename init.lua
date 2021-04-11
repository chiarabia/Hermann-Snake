function _init()
	--global variables
		grid_size=2
		snake_vel=2
		difficulty = " normal"
        collide= "not gameover"
        collision = false
		color_apple_string = " gray"
        color_apple = 5
        palt(0,false)
        palt(9,true)
		
		apple_positions_1_x = { 13,23,33,43,53,63,73,83,93,103}
        apple_positions_1_y = { 23,33,43,53,63,73,83,93,103,113}
		apple_positions_2_x = { 11,21,31,41,51}
	    apple_positions_2_y = { 21,31,41,51}
	--first state
		init_menu()
end

function init_menu()
	sprite = 7
	y = 78
	_update = update_menu
	_draw = draw_menu
end

function init_game()
	apples={}
	add(apples,apple_spawn())
	snake = {}
    add(snake,snake_spawn())
	
	ticks = 0

	_update = update_game
	_draw = draw_game
end

function init_gameover()
	_update = update_gameover
	_draw= draw_gameover
end

function init_options()
    sprite = 8
    color_difficulty = 7
    color_gameover = 7
    color_menu = 7
    color_apple_options = 7
	y = 18
	i = 1
	positions = {18,48,78,108}
	_update = update_options
	_draw = draw_options
end
	