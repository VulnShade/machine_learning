# LLMs 

[← Back to Main Page](../README.md) | [← Back to Overview](../machine_learning.md)

## [Transformers](transformers/README.md)

## Inference
### 1. Prefill Phase
- <b>Tokenization</b>: Convert input into tokens
- <b>Embedding Conversion</b>: Transform tokens into numerical representations  ("tokens")
- <b>Initial Processing</b>: : Mapping these numeric token IDs into dense numerical vectors representing their semantic meaning for machine learning models.

### 2. Decode Phase
- <b>Attention Computation</b>: Look at previous tokens for context
- <b>Probability Calculation</b>: Determine likelihood of each possible next token
- <b>Token Selection</b>: Choose next token based on probabilities
- <b>Continuation Check</b>: Decide whether to contine or stop generation

