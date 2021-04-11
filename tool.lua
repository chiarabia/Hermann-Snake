function apple_spawn()
    apple_spawn_array_x=apple_positions_2_x
    apple_spawn_array_y=apple_positions_2_y
     if grid_size == 1 then
         apple_spawn_array_x=apple_positions_1_x
         apple_spawn_array_y=apple_positions_1_y
     end

    apple= {
            x = rnd(apple_spawn_array_x),
            y = rnd(apple_spawn_array_y),
            draw = draw_apple
    }
    
       return apple
   end


function snake_spawn()
    snake = {
        x = 11,
        y = 11,
        prev_x=0,
        prev_y=0,
        body= {},
        dx = 1,
        dy = 0,
        draw = draw_snake,
        update = update_snake
        --check_for_collision = collision_snake
    }
    return snake
end

function block_spawn(pix_x,pix_y)
    block = {
        x = pix_x,
        y = pix_y,
        --width = 8,
        --height = 8,
        draw = draw_block
    }
    return block
end

--[[ collision_snake = function(self,block)
    if (bounding_boxes_overlapping(self,block)) then
        init_gameover()
    end
end ]]

draw_apple = function(self)
    rectfill(self.x*grid_size,self.y* grid_size,(self.x+2)*grid_size-1,(self.y+2)*grid_size-1,color_apple)
end
draw_block = function(self)
    spr(1,self.x*grid_size,self.y*grid_size,grid_size,grid_size)
    --rect(self.x*grid_size,self.y*grid_size,(self.x*grid_size)+self.width,(self.y*grid_size)+self.height,0)
end

draw_snake = function (self)
    -- draws head
    rectfill(self.x*grid_size,self.y* grid_size,(self.x+1)*grid_size-1,(self.y+1)*grid_size-1,6)
    --rect(self.x*grid_size,self.y* grid_size,(self.x+1)*grid_size-1,(self.y+1)*grid_size-1,6)
    -- draws body
	for part in all(self.body) do
	    rectfill(part.x*grid_size,part.y* grid_size,(part.x+1)*grid_size-1,(part.y+1)*grid_size-1,6)
	end
end

update_snake =function (self)
    --updates head position
    snake.prev_x=snake.x
    snake.prev_y=snake.y
         		
    snake.x += snake.dx
    snake.y += snake.dy

    --updates body positions     		
    for part in all(self.body) do
        last_x = part.x
        last_y = part.y
         			
        part.x=snake.prev_x
        part.y=snake.prev_y
         			
        snake.prev_x = last_x
        snake.prev_y = last_y
    end
         		
    apple_state = false
    --check if the apple is eaten   		
    if (apple.x == snake.x and apple.y == snake.y) or (apple.x+1 == snake.x and apple.y == snake.y) or (apple.x == snake.x  and
        apple.y+1 == snake.y) or (apple.x+1 == snake.x and apple.y+1 == snake.y) then
            --cancello la mela
            del(apples,apple)
            --aggiungo la mela
            add(aples,apple_spawn())
            apple_state=true
    end

    -- if apple eaten add body part
    if apple_state then
        add(snake.body,{ x=self.prev_x,y=self.prev_y})
    end

    -- if snake goes out of the screen 
    if(snake.x == 0 or snake.x == 127 or snake.y == 9 or snake.y == 127) then
        init_gameover()
    end
           
    if(grid_size == 2) then
        if(snake.x == 65 or snake.y == 65) then
            init_gameover()
        end  
    end
    
    --if snake eats itself
    for part in all(self.body) do
        if(snake.x == part.x and snake.y == part.y) then
           	init_gameover()
        end
    end

    --[[ if(collision == true) then 
        local block
        for block in all(blocks) do
            snake:check_for_collision(block)
    end ]]
--end

end

--[[ function lines_overlapping(min1,max1,min2,max2)
    return max1>min2 and max2>min1
end

function rects_overlapping(left1,top1,right1,bottom1,left2,top2,right2,bottom2)
    return lines_overlapping(left1,right1,left2,right2) and lines_overlapping(right1,bottom1,right2,bottom2)
end


function bounding_boxes_overlapping(obj1,obj2)
    return rects_overlapping(obj1.x*grid_size,obj1.y*grid_size,(obj1.x*grid_size),(obj1.y*grid_size),obj2.x*grid_size,obj2.y*grid_size,(obj2.x*grid_size)+obj2.width,(obj2.y*grid_size)+obj2.height)
end ]]