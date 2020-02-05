function ver()
    log ("file util version 1 \n", "null")
end
function info()
    log ("f is file util, it is used for open file and other \n","null")
end
function help()
    log ("f cd (open file) {path} \n", "null")
    
    log ("f up (go to the top path) \n", "null")
    
    log ("f l (list all folder/file in the path) \n", "null")
end




function run()
    
    v =   getCommarg()
    if(isArg("cd")) then 
        if(dirExist(v)) then 

            setFilePath(v)
        else

            log ("file path does not exist", "error")
        end
    elseif(isArg("up")) then 
        setFilePath(dirTop(getFilePath()))
    elseif(isArg("l")) then
        

 for dir in io.popen("dir "..getFilePathIS().. " /b /ad"):lines() do print(dir) end
        
    end
end