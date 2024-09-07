# ocpp-markdown

OCPP document converted to markdown

## Convert asciidoc to pdf using asciidoc-pdf

```bash
asciidoctor-pdf --theme ../styles/themes/theme.yml -a pdf-fontsdir="../styles/fonts;GEM_FONTS_DIR" ${asciidoc_file}
```

## Credits

- [Open Charge Alliance(OCA)](https://openchargealliance.org/) for OCPP document
- [pdf-to-markdown](https://github.com/jzillmann/pdf-to-markdown) for converting OCPP pdf to markdown
- [Llama-3-Open-Ko-8B](https://huggingface.co/beomi/Llama-3-Open-Ko-8B) and [Llama-3-Open-Ko-8B-gguf](https://huggingface.co/teddylee777/Llama-3-Open-Ko-8B-gguf) for translation
- [Ollama](https://ollama.com) for running LLM model
