# Agents

> An Agent is a system that leverages an AI model to interact with its environment in order to achieve a user-defined objective. It combines reasoning, planning, and the execution of actions (often via external tools) to fulfill tasks.

### Parts:
1. `Brain (AI Model)` - Handles reasoning and planning. Decides which action to take based on situation
2. `Body (Capabilities and tools)` - what Agent is equipped to do

<br>
<hr>


## LLMs:

> Objective is to predict next token, given sequence of previous tokens

<img src="images/models.png">

<br>

`token` - unity of information (word or part of a word)

### System Messages (System Prompts)
- Define how model should behave
- Serve as persistent instructions
- Gives information about available tools
- Instuctions to model on how to format actions to take
- Guideline on the thought process segmentation

    <br>
    
    ```json
    system_message = {
        "role": "system",
        "content": "You are a professional customer service agent. Always be polite, clear, and helpful."
    }
    ```

    <br>

### Conversations: User and Assistant (LLM) Messages
> Chat templates maintain context by preserving conversation history

```json
conversation = [
    {"role": "user", "content": "I need help with my order"},
    {"role": "assistant", "content": "I'd be happy to help. Could you provide your order number?"},
    {"role": "user", "content": "It's ORDER-123"},
]
```

### Chat Templates:

Formats exchanges into prompts (SmolLM2 ex.)
```
<|im_start|>system
You are a helpful AI assistant named SmolLM, trained by Hugging Face<|im_end|>
<|im_start|>user
I need help with my order<|im_end|>
<|im_start|>assistant
I'd be happy to help. Could you provide your order number?<|im_end|>
<|im_start|>user
It's ORDER-123<|im_end|>
<|im_start|>assistant
```

- `Base Model` - Trained on raw data to predict next token
- `Instruct Model` - Fine-tuned to follwo instructions and engage in conversations.

<br>

```python
from transformers import AutoTokenizer

tokenizer = AutoTokenizer.from_pretrained("HuggingFaceTB/SmolLM2-1.7B-Instruct")
rendered_prompt = tokenizer.apply_chat_template(messages, tokenize=False, add_generation_prompt=True)
```

<br>
<hr>

## tools
