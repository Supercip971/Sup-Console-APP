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
        if(isArg("folder")) then 
            log ("folder list\n", "null")
            log ("\n", "null")
            for i=0,fileNumber(getFilePath())-1,1 do 
                if(fileSize(fileList(getFilePath(), i)) == -1) then
                    log ((fileList(getFilePath(), i)), "null")
                    setConsoleCurPos(20,-1)
                    log (("  |   ".. "size: ".. fileSize(fileList(getFilePath(), i))).."\n","null")
                end
            end
        else if(isArg("folder") ) then 
            log ("file list\n", "null")
            log ("\n", "null")
            for i=0,fileNumber(getFilePath())-1,1 do 
                if(fileSize(fileList(getFilePath(), i)) > 0) then
                    log ((fileList(getFilePath(), i)), "null")
                    setConsoleCurPos(20,-1)
                    log (("  |   ".. "size: ".. fileSize(fileList(getFilePath(), i))).."\n","null")
                end
            end
    
        else
            log ("file and folder list\n", "null")
            log ("\n", "null")
            for i=0,fileNumber(getFilePath())-1,1 do 

                log ((fileList(getFilePath(), i)), "null")
                setConsoleCurPos(20,-1)
                log (("  |   ".. "size: ".. fileSize(fileList(getFilePath(), i))).."\n","null")
            end
        end
    end
    end
end