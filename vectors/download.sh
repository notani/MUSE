echo "WARNING: This script downloads compressed files of ~6 GB and decompress them. Make sure you have enough disk space."

for lang in es fr tra
do
    for config in baseline mwe_eomw mwe_eomw+parseme
    do
        dir_output=fasttext_en_${lang}/${config}
        cmd="mkdir -p ${dir_output}"
        echo $cmd
        eval $cmd
        cmd="curl -Ss https://s3.amazonaws.com/naacl2019-mwe-cwe/fasttext_en_${lang}/${config}/vectors-en.txt.xz | xzcat > ${dir_output}/vectors-en.txt"
        echo $cmd
        eval $cmd
        cmd="curl -Ss https://s3.amazonaws.com/naacl2019-mwe-cwe/fasttext_en_${lang}/${config}/vectors-${lang}.txt.xz | xzcat > ${dir_output}/vectors-${lang}.txt"
        echo $cmd
        eval $cmd
    done
done

for lang in ar ja-ipadic ja-unidic zh
do
    for config in baseline mwe_eomw
    do
        dir_output=fasttext_en_${lang}/${config}
        cmd="mkdir -p ${dir_output}"
        echo $cmd
        eval $cmd
        cmd="curl -Ss https://s3.amazonaws.com/naacl2019-mwe-cwe/fasttext_en_${lang}/${config}/vectors-en.txt.xz | xzcat > ${dir_output}/vectors-en.txt"
        echo $cmd
        eval $cmd
        cmd="curl -Ss https://s3.amazonaws.com/naacl2019-mwe-cwe/fasttext_en_${lang}/${config}/vectors-${lang}.txt.xz | xzcat > ${dir_output}/vectors-${lang}.txt"
        echo $cmd
        eval $cmd
    done
done
