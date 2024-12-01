# ocpp-markdown

OCPP document converted to markdown

OCPP 1.6 및 2.0.1 문서에 대해 asciidoc으로 변환하고, 한글로 변환한 프로젝트입니다.

## Convert asciidoc to pdf using asciidoc-pdf

To convert asciidoc file to pdf file, run command below in asciidoc file is located.

```bash
asciidoctor-pdf --theme ../styles/themes/theme.yml -a pdf-fontsdir="../styles/fonts;GEM_FONTS_DIR" ${asciidoc_file}
```

## Credits

- [Open Charge Alliance(OCA)](https://openchargealliance.org/) for OCPP document
- [pdf-to-markdown](https://github.com/jzillmann/pdf-to-markdown) for converting OCPP pdf to markdown
