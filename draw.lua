function draw_menu()
	cls()
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
    print((#snake.body)*100,30,(last_y/2)-1,7)

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
	cls()
	print("gameover",30, 80,7)
end

function draw_options()
	cls()
    --spr(sprite,18,y)
    spr(sprite,30,19,1,1,true)
    spr(sprite,75,19)
	print("difficulty: ",35,10,7)
	print(difficulty, 40,20,color_difficulty)

    spr(sprite,23,49,1,1,true)
    spr(sprite,90,49)
	print("collide with boxes: ",20,40,7)
	print(collide,33,50,color_gameover)
    
    spr(sprite,40,79,1,1,true)
    spr(sprite,70,79)
	print("apple color:",35,70,7)
	print(color_apple_string,45,80,color_apple_options)

	
	print("main menu",40, 110,color_menu)
end