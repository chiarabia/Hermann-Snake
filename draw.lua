function draw_menu()
    cls()
    draw_logo()
	print("play",30, 80,7)
	spr(sprite,18,y)
	print("options", 30, 88,7)
end

function draw_game()
    cls(7)
    --draws la parte in alto
    rectfill(0,0,127,10*grid_size,0)
    
    --setta i dettagli per i blocchi
	if(grid_size == 1) then
	 	pix_x = 5
	    pix_y = 15
        base_y= 15
        last_y = 9
	    max_x = 11
	    max_y = 10
	end
	if grid_size == 2 then
	 	pix_x = 3
	    pix_y = 13
        base_y= 13
        last_y= 18
	    max_x = 5
	    max_y = 4
    end
    
    rectfill(1,1,125,1,7)
    rectfill(1,1,1,last_y,7)
    rectfill(125,1,125,last_y,7)
    rectfill(1,last_y,11,last_y,7)
    rectfill(13,last_y,13,last_y,7)
    rectfill(15,last_y,125,last_y,7)

    print("score:",5,(last_y/2)-1,7)
    score = #snake.body * 100
    print(score,30,(last_y/2)-1,7)

    blocks = {}
    --draws i blocchi
	for x=0,max_x do
		for y=0,max_y do
            add(blocks,block_spawn(pix_x,pix_y))
            block.draw(block)
            pix_y = pix_y + 10
        end
        pix_x = pix_x + 10
        pix_y = base_y
    end	 

	snake.draw(snake)
	apple.draw(apple)
end



function draw_gameover()
    print("highscore: ",35,35,7)
    print(highscore,79,35,7)
    print("gameover",44, 59,7)
    print("score: ",44,69,7)
    print(score,70,69,7)
    print("difficulty: ",25,76,7)
    print(difficulty,70,76,7)
    print("press X for main menu",20, 110,7)
end

function draw_options()
	cls()
    --spr(sprite,18,y)
    spr(sprite,34,19,1,1,true)
    spr(sprite,72,19)
	print("difficulty: ",38,10,7)
	print(difficulty, 42,20,color_difficulty)

    spr(sprite,25,49,1,1,true)
    spr(sprite,87,49)
	print("collide with boxes: ",25,40,7)
	print(collide,37,50,color_gameover)
    
    spr(sprite,40,79,1,1,true)
    spr(sprite,70,79)
	print("apple color:",35,70,7)
	print(color_apple_string,45,80,color_apple_options)

	
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