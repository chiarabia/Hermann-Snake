function update_menu()
    --controls for the menu
    if( y == 78 and btnp(⬇️)) then
        y = 86
    end
    if ( y == 86 and btnp(⬆️))then 
        y = 78
    end 
    if( y == 78 and btnp(❎)) then
        init_game()
    elseif( y == 86 and btnp(❎)) then
        init_options()
    end
    
end

function update_game()
    --takes the imput movement for the snake
    if btnp(➡️) then
        snake.dx= 1
        snake.dy= 0
    elseif btnp(⬅️) then
        snake.dx= -1
        snake.dy= 0
    elseif btnp(⬆️) then
        snake.dx= 0
        snake.dy= -1
    elseif btnp(⬇️) then
        snake.dx= 0
        snake.dy= 1
    end 


    --ticks time and updates snake every frame
    ticks += 1
    if ticks >= snake_vel then
        snake.update(snake)
        ticks = 0
    end

end

function update_gameover()
      if(btnp(❎)) then
        init_menu()
        end
end

function update_options()
    if(btnp(⬇️) and y != 108) then
        i = i + 1
        y = positions[i]
    end

    if(btnp(⬆️) and y!= 18) then
        i = i - 1
        y = positions[i]
    end

    if(y == 18) then
        color_difficulty = 6
        color_gameover = 7
        if btnp(➡️) then
            difficulty="hardcore"
            grid_size = 1
            snake_vel = 1	
        end
        if btnp(⬅️) then
            difficulty ="normal"
            grid_size = 2
            snake_vel= 2
        end
    end

    if(y== 108) then
        color_menu = 6
        color_apple_options = 7
        if btnp(❎) then
            init_menu()
        end
    end

    if(y==48) then
        color_gameover = 6
        color_difficulty = 7
        color_apple_options = 7
        if btnp(⬅️) then
            collide = "not gameover"
            collision = false
        end
        if btnp(➡️) then
            collide = "gameover"
            collision = true
        end
    end

    if(y == 78) then
        color_apple_options = 6
        color_menu = 7
        color_gameover = 7
        if btnp(➡️) then
            color_apple_string = " black"
            color_apple = 0
        end
        if btnp(⬅️) then
            color_apple_string = " gray"
            color_apple = 5
        end
    end

end
