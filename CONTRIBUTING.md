# 🤝 Contributing to AI Agent System Prompts

Thank you for your interest in contributing! This repository aims to collect **battle-tested** system prompts that have proven effective in real-world scenarios.

## 📋 Contribution Guidelines

### ✅ What We Accept

- **Tested Prompts**: Prompts that you've actually used and refined through real experience
- **Generalized Solutions**: Prompts that can be adapted for various use cases, not just your specific scenario
- **Well-Documented**: Clear purpose, usage instructions, and examples
- **Placeholder-Friendly**: Uses placeholders for customizable elements

### ❌ What We Don't Accept

- Untested or theoretical prompts
- Highly specific prompts that can't be generalized
- Prompts without proper documentation
- Duplicate content (unless significantly improved)

## 🚀 How to Contribute

### 1. **Choose Your Category**

Organize your prompt in the appropriate directory:
- `prompts/development/` - Software development
- `prompts/data-science/` - Data analysis and modeling
- `prompts/writing/` - Content creation and documentation
- `prompts/research/` - Research and analysis tasks
- `prompts/general/` - General-purpose prompts

### 2. **Use the Template**

Start with our [prompt template](templates/prompt-template.md) to ensure consistency:

```bash
cp templates/prompt-template.md prompts/category/your-prompt-name.md
```

### 3. **Fill Out All Sections**

- **Purpose**: Clear one-line description
- **Overview**: Detailed explanation of what the prompt achieves
- **Use Cases**: Specific scenarios where this prompt is helpful
- **System Prompt**: The actual prompt text with placeholders
- **Customization Placeholders**: Table explaining how to customize
- **Usage Tips**: Best practices and gotchas
- **Related Prompts**: Links to similar or complementary prompts

### 4. **Test Your Prompt**

Before submitting:
- ✅ Use the prompt in a real AI agent environment
- ✅ Verify placeholders work correctly
- ✅ Ensure examples are accurate and helpful
- ✅ Test with different customizations

### 5. **Submit a Pull Request**

- Create a descriptive PR title: `Add [Category]: [Prompt Name]`
- Include testing details in your PR description
- Reference any related issues or discussions

## 📝 Quality Standards

All prompts must meet these criteria:

### 🧪 Battle-Tested
- Used in real scenarios with measurable success
- Refined through actual experience, not just theoretical

### 📚 Well-Documented
- Clear purpose and use cases
- Comprehensive customization guide
- Working examples
- Usage tips and best practices

### 🔧 Generalized
- Uses placeholders for customizable elements
- Applicable beyond your specific use case
- Maintains broad utility while being specific enough to be useful

### 🎯 Maintainable
- Easy to understand and modify
- Follows consistent formatting
- Clear version history

## 📁 File Naming Conventions

- Use kebab-case: `my-prompt-name.md`
- Be descriptive but concise
- Include the domain/specialty if needed: `python-web-scraping.md`

## 🎨 Style Guidelines

### Writing Style
- Use clear, concise language
- Write in present tense
- Use active voice when possible
- Include emojis for visual organization (but don't overdo it)

### Formatting
- Use the provided template structure
- Include proper markdown headers
- Use code blocks for prompts and examples
- Include tables for placeholder documentation

## 🔄 Review Process

1. **Initial Review**: Maintainers check basic requirements
2. **Community Feedback**: Other contributors may provide input
3. **Testing Verification**: We may test the prompt ourselves
4. **Final Approval**: Merge when all criteria are met

## 🆘 Getting Help

- **Questions**: Open an issue with the "question" label
- **Discussion**: Use GitHub Discussions for broader topics
- **Problems**: Report bugs or issues with existing prompts

## 🏆 Recognition

Contributors will be:
- Listed in prompt version history
- Mentioned in release notes
- Featured in the README for significant contributions

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

**💡 Remember**: The best prompts are those that have been battle-tested in real scenarios. Don't just share what you think might work—share what you know works!