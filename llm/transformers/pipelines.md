# Pipelines
[← Back to Transformers](README.md)


## Available Pipelines:
### Text pipelines
- text-generation: Generate text from a prompt
- text-classification: Classify text into predefined categories
- summarization: Create a shorter version of a text while preserving key information
- translation: Translate text from one language to another
- zero-shot-classification: Classify text without prior training on specific labels
- feature-extraction: Extract vector representations of text

### Image pipelines
- image-to-text: Generate text descriptions of images
- image-classification: Identify objects in an image
- object-detection: Locate and identify objects in images

### Audio pipelines
- automatic-speech-recognition: Convert speech to text
- audio-classification: Classify audio into categories
- text-to-speech: Convert text to spoken audio

### Multimodal pipelines
- image-text-to-text: Respond to an image based on a text prompt

## Example
```python
from transformers import pipeline

generator = pipeline("text-generation", model="HuggingFaceTB/SmolLM2-360M")
generator(
    "In this course, we will teach you how to",
    max_length=30,
    num_return_sequences=2,
)
```