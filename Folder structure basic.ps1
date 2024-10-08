# Fonction pour créer des dossiers si non existants
function Create-Folders {
    param ([string]$base, [string[]]$folders)

    foreach ($folder in $folders) {
        $fullPath = Join-Path $base $folder
        if (-not (Test-Path $fullPath)) {
            mkdir $fullPath
        }
    }
}

# Demande à l'utilisateur quel type de structure il veut créer
$confirm = Read-Host 'Créer une structure de dossier type GOAT ? [C]Complète [L]Légère [T]Travail [N]Non '

# Structure Complète
if ($confirm -eq "C") {
    # Créer les dossiers principaux
    $basePath = (Get-Location).Path
    $folders = @("000_archive", "00_cache", "01_Programmes", "02_Jeux", "03_Programmation", "04_Video", "05_Images", "06_Music", "07_Ecole", "08_travail", "09_projet", "10_documents", "11_animes")
    Create-Folders $basePath $folders

    # Dossiers spécifiques à 000_archive
    Set-Location "000_archive"
    Create-Folders (Get-Location).Path @("000_private", "001_public", "002_important", "003_backup")
    Set-Location $basePath

    # Dossiers pour Programmation
    Set-Location "03_Programmation"
    Create-Folders (Get-Location).Path @("30_Cache", "31_Unity", "32_Visual_studio", "33_Visual_studio_code", "34_Git", "35_VM", "36_Docker", "37_Autre")
    Set-Location $basePath

    # Dossiers pour Video
    Set-Location "04_Video"
    Create-Folders (Get-Location).Path @("40_Cache", "41_Raw", "42_Editer", "43_Fond vert", "44_Sond", "45_Music", "46_Fini")
    Set-Location $basePath

    # Dossiers pour Images
    Set-Location "05_Images"
    Create-Folders (Get-Location).Path @("50_Cache", "51_Raw", "52_Editer", "53_Fond vert", "54_Sond", "55_Music", "56_Fini")
    Set-Location $basePath

    # Dossiers pour Music
    Set-Location "06_Music"
    Create-Folders (Get-Location).Path @("60_Cache", "61_playlist", "62_Raw", "63_Editer")
    Set-Location $basePath

    # Dossiers pour Documents
    Set-Location "10_documents"
    Create-Folders (Get-Location).Path @("100_private", "101_public", "102_important")
    Set-Location $basePath
}

# Structure Légère
elseif ($confirm -eq "L") {
    $folders = @("000_archive", "00_cache", "01_Programmes", "02_Jeux", "03_Programmation", "04_Video", "05_Images", "06_Music", "07_Ecole", "08_travail", "09_projet", "10_documents", "11_animes")
    Create-Folders (Get-Location).Path $folders
}

# Structure Travail
elseif ($confirm -eq "T") {
    $folders = @("000_archive", "00_cache", "01_Programmes", "03_Programmation", "04_Video", "05_Images", "09_projet", "10_documents")
    Create-Folders (Get-Location).Path $folders

    # Dossiers spécifiques à Programmation
    Set-Location "03_Programmation"
    Create-Folders (Get-Location).Path @("30_Cache", "31_Unity", "32_Visual_studio", "33_Visual_studio_code", "34_Git")
    Set-Location $basePath
}

# Si l'utilisateur choisit 'N' ou autre chose, on quitte
else {
    Write-Host "Aucune action effectuée. Sortie du script."
    exit
}
