Carusele DB Demo  
----------  

Database that contains all Carusele campaign activity and stats  
* Mechanical Turk social data info via CSV  
    -- URLs  
    -- Social data (pins, etc)  
    -- ability to append additional data per record  
        -- scores  
        -- version of content agreement  
* Reports and charts  
    -- number of entries over time  
    -- total number of Pins, Likes, etc  

Tools  
* Rails  
* ActiveAdmin  
* MongoDB  
* ???  

campaigns  
* has many URLs  
    -- URL has type  
        + Blog  
            -- has attributes  
                -- blog name  
                -- campaign  
                -- url  
                -- comments  
                -- Facebook_likes  
                -- Facebook_shares  
                -- LinkedIn_shares  
                -- Pinterest_pins  
                -- Tweets  
                -- Rights_version  
        + Instagram  
            -- has attributes  
                -- user name  
                -- campaign  
                -- url  
                -- comments  
                -- Instagram_followers  
                -- Instagram_likes  
                -- Rights_version  
        + Pinterest  
            -- has attributes  
                -- user name  
                -- campaign  
                -- url  
                -- comments  
                -- Pinterest_followers  
                -- Pinterest_likes  
                -- Pinterest_pins  
                -- Rights_version  