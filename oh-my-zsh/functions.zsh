# To convert a password protected PDF into an unencrypted pdf
# Source = https://askubuntu.com/questions/560960/unprotect-a-protected-pdf
pdf-unencrypt () {
    : "Usage: <file>
Uses ghostscript to rewrite the file without encryption."
    local in="$1"
    gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile="${in:r}_unencrypted.pdf" -c .setpdfwrite -f "$in"
}

# ocrmypdf --output-type pdf --force-ocr confidentiality_cases_forums.pdf out.pdf
pdf-ocr () {
   : "Usage: <file>
Uses ocrmypdf to rewrite the file with ocr."
    local in="$1"
    ocrmypdf --deskew --output-type pdfa --force-ocr $1 "${in:r}_rw.pdf"
}
