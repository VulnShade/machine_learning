# Transformers

[← Back to Main Page](../../README.md) | [← Back to LLMs](../README.md)

## Pipeline
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
