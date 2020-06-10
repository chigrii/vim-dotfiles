$dir = "~/vimfiles/autoload"

if (Test-Path $dir)
{
    echo "vimplug install dir already exists"
} else {
    md ~/vimfiles/autoload
}

$uri = "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
(New-Object Net.WebClient).DownloadFile(
    $uri,
    $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
        "~/vimfiles/autoload/plug.vim"
    )
)
