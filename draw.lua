function draw_menu()
    cls()
    draw_logo()
	print("play",30, 80,7)
	spr(sprite,18,y)
	print("options", 30, 88,7)
end

function draw_game()
    cls(main_color)
    --draws la parte in alto
    rectfill(0,0,127,10*grid_size,small_color)
    
    --setta i dettagli per i blocchi    
    rectfill(1,1,125,1,main_color)
    rectfill(1,1,1,last_y_b,main_color)
    rectfill(125,1,125,last_y_b,main_color)
    rectfill(1,last_y_b,11,last_y_b,main_color)
    rectfill(13,last_y_b,13,last_y_b,main_color)
    rectfill(15,last_y_b,125,last_y_b,main_color)

    print("score:",5,(last_y_b/2)-1,main_color)
    score = #snake.body * 100
    print(score,30,(last_y_b/2)-1,main_color)

    for part in all(blocks) do 
        block.draw(part)
    end

	snake.draw(snake)
	apple.draw(apple)
end



function draw_gameover()
    print("highscore: ",35,35,main_color)
    print(highscore,79,35,main_color)
    print("gameover",44, 59,main_color)
    print("score: ",44,69,main_color)
    print(score,70,69,main_color)
    print("difficulty: ",25,76,main_color)
    print(difficulty,70,76,main_color)
    print("press X for main menu",20, 110,main_color)
end

function draw_options()
	cls()
    --spr(sprite,18,y)
    spr(sprite,36,19,1,1,true)
    spr(sprite,74,19)
	print("difficulty: ",38,10,7)
	print(difficulty, 44,20,color_difficulty)

    spr(sprite,25,44,1,1,true)
    spr(sprite,87,44)
	print("collide with boxes: ",25,35,7)
    print(collide,37,45,color_gameover)
    
    spr(sprite,33,69,1,1,true)
    spr(sprite,77,69)
    print("colors: ",45,60,7)
    print(colors_option,43,70,color_options_string)
    
    spr(sprite,35,94,1,1,true)
    spr(sprite,70,94)
	print("apple color:",35,85,7)
	print(color_apple_string,45,95,color_apple_options)

	
	print("main menu",40, 110,color_menu)
end

function draw_logo()
    spr(64,20,20)
    spr(65,28,20)
    spr(65,36,20)
    spr(65,44,20)
    spr(65,52,20)
    spr(65,60,20)
    spr(65,68,20)
    spr(65,76,20)
    spr(65,84,20)
    spr(65,92,20)
    spr(66,100,20)
    spr(67,20,28)
    spr(74,28,28)
    spr(75,36,28)
    spr(76,44,28)
    spr(77,52,28)
    spr(94,60,28)
    spr(78,68,28)
    spr(79,76,28)
    spr(79,84,28)
    spr(73,100,28)
    spr(67,20,36)
    spr(80,28,36)
    spr(81,36,36)
    spr(82,44,36)
    spr(83,52,36)
    spr(84,60,36)
    spr(85,68,36)
    spr(86,76,36)
    spr(87,84,36)
    spr(73,100,36)
    spr(67,20,44)
    spr(88,44,44)
    spr(89,52,44)
    spr(93,60,44)
    spr(90,68,44)
    spr(91,76,44)
    spr(92,84,44)
    spr(73,100,44)
    spr(68,20,52)
    spr(69,28,52)
    spr(70,36,52)
    spr(71,44,52)
    spr(71,52,52)
    spr(71,60,52)
    spr(71,68,52)
    spr(71,76,52)
    spr(71,84,52)
    spr(71,92,52)
    spr(72,100,52)
end