$arr = Get-ChildItem ./ | 
       Where-Object {$_.PSIsContainer} | 
       Foreach-Object {$_.Name}

$confirm = "N"
$confirm = Read-Host 'Node modules ? Install(I) Delete(D) Update(U)'

If($confirm -eq "I"){
    For($i=0;$i -lt $arr.length ;$i++) 
    { 
       Write-Output "node-modules install : $($arr[$i])" 
       start-process powershell.exe -argument "-nologo -noprofile -command cd ./'$($arr[$i])' ; npm i ;exit"
    }
}elseif($confirm -eq "D"){
    For($i=0;$i -lt $arr.length ;$i++) 
    { 
        Write-Output "node-modules Remove : $($arr[$i])" 
        start-process powershell.exe -argument "-nologo -noprofile -command cd ./'$($arr[$i])' ; Remove-Item -path .\node_modules -recurse ;exit"
    }
}elseif($confirm -eq "U"){
    For($i=0;$i -lt $arr.length ;$i++) 
    { 
        Write-Output "node-modules Update : $($arr[$i])" 
        start-process powershell.exe -argument "-nologo -noprofile -command cd ./'$($arr[$i])' ; npm update ;exit"
    }
}else{
    Write-Output "good bye"
    exit
}
