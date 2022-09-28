add-type -an system.windows.forms
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$dataObj = [System.Windows.Forms.Clipboard]::GetDataObject();

if ($dataObj) {
    foreach ($file in $dataObj.GetFileDropList()) {
        [Console]::WriteLine($file)
    }
}