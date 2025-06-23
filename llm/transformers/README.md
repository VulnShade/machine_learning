# Transformers

[← Back to Main Page](../../README.md) | [← Back to LLMs](../README.md)

## [Pipeline](pipelines.md)
> Connects a model with its necessary preprocessing and postprocessing steps, allowing us to directly input any text and get an intelligible answer

```python
from transformers import pipeline

classifier = pipeline("sentiment-analysis")
classifier("I've been waiting for a HuggingFace course my whole life.")

[{'label': 'POSITIVE', 'score': 0.9598047137260437}]
```

### Steps:
1. The text is preprocessed into a format the model can understand.
2. The preprocessed inputs are passed to the model.
3. The predictions of the model are post-processed, so you can make sense of them.

<br>

## Components
### 1. Encoder:
- encodes text into numerical representations (embeddings, feature vector or tensor)
- takes context of surrounding words (both left and right) into vector representation
- good for understanding sequences
- ex: BERT, RoBERTa, ALBERT
### 2. Decoder
- outputs numerical representation from initial sequence (feature vector or tensor)
- uses masked self attention (left or right context only)
- good for generating sequences given a context
- ex: GPT, SmolLM, Llama, Gemma, DeepSeek V3

#### Tasks:
- <b>Encoder-only models (like BERT)</b>: Good for tasks that require understanding of the input, such as sentence classification and named entity recognition.
- <b>Decoder-only models (like GPT, Llama)</b>: Good for generative tasks such as text generation.
- <b>Encoder-decoder models or sequence-to-sequence models (like T5, BART)</b>: Good for generative tasks that require an input, such as translation or summarization.