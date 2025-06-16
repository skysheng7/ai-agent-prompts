# 📚 Example: Customizing R Package Development Prompt

This example shows how to customize the [R Package Development prompt](../prompts/development/r-package-dev.md) for a specific data processing package focused on animal feed analysis.

## 🎯 Scenario

Building an R package for analyzing animal feed data with specific:
- Global variable system
- Configuration management
- Domain terminology
- Custom datetime handling

## 🔧 Customization Values

Here's how the placeholders were filled for this specific use case:

```markdown
{DOMAIN_TERMINOLOGY} → "use 'animal' instead of 'cow' to maintain generalization"
{GLOBAL_VARS_FILE} → "@global_var.R"
{CONFIG_FILE} → "@quality_check_setup.R"
{DATETIME_FUNCTION} → "ad_datetime"
{TIMEZONE_FUNCTION} → "tz2"
{PKGDOWN_CONFIG_FILE} → "[pkgdown.yaml](mdc:.github/workflows/pkgdown.yaml)"
{ID_COL_FUNCTION} → "id_col2"
{START_COL_FUNCTION} → "start_col2"
{END_COL_FUNCTION} → "end_col2"
{BIN_CONFIG_FUNCTIONS} → "bins_feed2(), bins_wat2(), bin_offset2()"
{CONFIG_FUNCTION} → "qc_config"
{EXAMPLE_FUNCTION_FILE} → "[qc_total_animals.R](mdc:R/qc_total_animals.R)"
{ADDITIONAL_DOMAIN_RULES} → "Focus on feed intake analysis and water consumption patterns"
```

## 📝 Resulting Customized Prompt

After customization, key sections become:

### Domain Terminology
```
- In documentation and comments, use 'animal' instead of 'cow' to maintain generalization
```

### Global Variables
```
- Always use the global variable system defined in @global_var.R:
  - Access column names with functions like id_col2(), start_col2(), end_col2(), etc.
  - Use tz2() for timezone settings
  - Access bin configurations with bins_feed2(), bins_wat2(), bin_offset2()
```

### Configuration System
```
- Always use the configuration system from @quality_check_setup.R: 
  - Create configurations with qc_config() for quality control functions
```

## 🎯 Benefits of This Customization

1. **Consistent Terminology**: Ensures AI agent uses "animal" instead of specific animals
2. **Standardized Variables**: All column references go through global variable functions
3. **Proper Configuration**: Quality control thresholds managed through config system
4. **Domain Focus**: Additional rules guide AI toward feed analysis patterns

## 🚀 Usage Results

This customized prompt successfully guided AI agents to:
- ✅ Create functions with proper global variable usage
- ✅ Implement comprehensive test suites (>90% coverage)
- ✅ Generate consistent roxygen2 documentation
- ✅ Follow package structure conventions
- ✅ Use domain-appropriate terminology

## 💡 Lessons Learned

1. **Start with Base Template**: The generic template provided a solid foundation
2. **Domain-Specific Rules Matter**: The additional rules section was crucial for specialized behavior
3. **Global Variables Prevent Hard-coding**: The variable system eliminated many maintenance issues
4. **Testing Requirements Work**: The emphasis on testing led to more robust code

---

**⚡ Pro Tip**: Test your customized prompt incrementally - start with simple functions and gradually increase complexity to ensure the AI agent follows all your rules consistently.