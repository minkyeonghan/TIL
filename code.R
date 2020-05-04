

# package download --------------------------------------------------------

install.packages(c('httr', 'XML'))


# setting -----------------------------------------------------------------

library(httr)
library(XML)

crtfc_key = '06049276d7c2b69eccaae160a5966d9c5029f6cf'


# corpCode download -------------------------------------------------------

url <- paste0('https://opendart.fss.or.kr/api/corpCode.xml?crtfc_key=', crtfc_key)

download.file(url, 'tmp.zip') #실패 

# 위 URL에서 직접 corpCode.XML 다운받은 후 확장자를 zip으로 변경하여 압축해제

code <- xmlParse('./corpCode/CORPCODE.xml')
code
code_df <- xmlToDataFrame(code) #30초 이상 걸림

corp_code = '00356370'
bsns_year = '2018'
reprt_code= '11011'