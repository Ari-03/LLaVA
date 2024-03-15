# Optimizing LLaVA: Measuring Mistral Against LLaMA for Visual Instruction Tuning

## Introduction

In the ever-expanding universe of artificial intelligence, Large Language Models (LLMs) have quickly moved from the shadows into the spotlight, transforming how we interact with technology. These models have mastered not just the art of conversation but have also stepped into the realm of understanding and generating visual content. 

Our focus shines on a pioneering approach that bridges the gap between language and vision, as introduced by Liu and colleagues in 2023. This innovative venture brings to life the Large Language-and-Vision Assistant (LLaVA), a multimodal marvel that integrates visual understanding with linguistic prowess, setting new standards for AI's capacity to follow complex instructions and engage with both text and imagery. The creation of LLaVA marks a significant milestone, as evidenced by its stellar performance across diverse benchmarks, proving its unparalleled multimodal fluency and instructional adeptness.

In an exciting development, we've enhanced LLaVA by incorporating the Mistral 7B model, an adjustment that significantly lowers computational demands while surpassing the original model's achievements. 


## Methods

Our methodology revolves around a strategic alteration to the Large Language-and-Vision Assistant (LLaVA). Transitioning from LLaMA to Mistral 7B as the foundational language model, we harness Mistral's advancements in efficiency and speed without sacrificing the model's depth of understanding and responsiveness.

<center><img src="assets/llavaarch.PNG" width=600></center>


The architecture underpinning our model involves a seamless blend of a pretrained visual encoder and the robust linguistic processing power of Mistral. This combination allows for a refined interpretation of both visual and textual data, facilitated by innovative techniques such as sliding window and grouped query attention. The model's training was conducted using a carefully selected subset of language-image instruction datasets, optimized for the most effective and generalizable learning outcomes.


## Results 

## Conclusion
