$confirm = "N"
$confirm = Read-Host 'Crée un squelette type GOAT structure ? [C]Complette [L]Leger [T]Travail [N]no '

If ($confirm -eq "C") {

    mkdir "000_archive"
    mkdir "00_cache"
    mkdir "01_Programmes"
    mkdir "02_Jeux"
    mkdir "03_Programmation"

    Set-Location "./03_Programmation"
    mkdir "30_Cache"
    mkdir "31_Unity"
    mkdir "32_Visual_studio"
    mkdir "33_Visual_studio_code"
    mkdir "34_Git"
    Set-Location "../"

    mkdir "04_Video"
    Set-Location "./04_Video"
    mkdir "40_Cache"
    mkdir "41_Raw"
    mkdir "42_Editer"
    mkdir "43_Fond vert"
    mkdir "44_Sond"
    mkdir "45_Music"
    mkdir "46_Fini"

    Set-Location "../"


    mkdir "05_Images"
    Set-Location "./05_Images"
    mkdir "50_Cache"
    mkdir "51_Raw"
    mkdir "52_Editer"
    mkdir "53_Fond vert"
    mkdir "54_Sond"
    mkdir "55_Music"
    mkdir "56_Fini"
    Set-Location "../"

    mkdir "06_Music"
    Set-Location "./06_Music"
    mkdir "60_Cache"
    mkdir "61_playlist"
    Set-Location "../"
    mkdir "07_Ecole"
    mkdir "08_travail"

    mkdir "09_projet"
    Set-Location "./09_projet"
    mkdir "90_Cache"
    Set-Location "../"

    mkdir "10_documents"

    mkdir "11_animes"
    Set-Location "./11_animes"
    mkdir "110_Cache"
    mkdir "111_Raw"
    mkdir "112_non fini"
    mkdir "113_Fini"
    Set-Location "../"


}
elseif ($confirm -eq "L") {
   
    mkdir "000_archive"
    mkdir "00_cache"
    mkdir "01_Programmes"
    mkdir "02_Jeux"
    mkdir "03_Programmation"
    mkdir "04_Video"
    mkdir "05_Images"
    mkdir "06_Music"
    mkdir "07_Ecole"
    mkdir "08_travail"
    mkdir "09_projet"
    mkdir "10_documents"
    mkdir "11_animes"
}
elseif ($confirm -eq "T") {
    
    mkdir "000_archive"
    mkdir "00_cache"
    mkdir "01_Programmes"
    mkdir "03_Programmation"

    Set-Location "./03_Programmation"
    mkdir "30_Cache"
    mkdir "31_Unity"
    mkdir "32_Visual_studio"
    mkdir "33_Visual_studio_code"
    mkdir "34_Git"
    Set-Location "../"

    mkdir "04_Video"
    mkdir "05_Images"
    mkdir "09_projet"
    mkdir "10_documents"
}
else {
    exit
}
