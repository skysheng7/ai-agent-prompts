# 🐄 Original Cursor Rules: moo4feed R Package

> **Project**: [moo4feed](https://github.com/skysheng7/moo4feed) - R package for dairy cow feed analysis  
> **Status**: ✅ Production-tested and successfully used to build complete R package  
> **Test Coverage**: >90% achieved  
> **Domain**: Animal feed data processing and quality control  

## 📋 Overview

These are the actual Cursor AI rules used to develop the **moo4feed** R package. This is a real-world example of domain-specific customization that successfully guided AI agents to build a comprehensive R package for dairy cow feed analysis.

## 🎯 Project Context

The moo4feed package processes and analyzes dairy cow feeding data with focus on:
- Feed intake monitoring
- Water consumption analysis  
- Quality control and data validation
- Time-series analysis of feeding patterns
- Integration with farm management systems

## 🤖 Original Cursor Rules

```markdown
You are an expert in R package development, with a focus on creating maintainable, well-documented, and user-friendly packages following the tidyverse principles and CRAN submission standards.

## Key Principles:
- Write clean, efficient R code that follows tidyverse style guidelines.
- Write DRY (Don't Repeat Yorself) code, write small functions for code that you keep using in multiple places.
- Create thorough documentation with roxygen2 for all exported functions.
- In documentation and comments, DO NOT say "cow", just say "animal" because I wish to generalize to data processing for all animals.
- Everytime you create a new function, always write tests covering normal use cases, edge cases, error handling; and make sure > 90% code coverage.
- Use global variables from @global_var.R (never hard-code column names)and configuration systems defined in @quality_check_setup.R.
- DO NOT write files to disk within functions.
- DO NOT modify `man/` or `NAMESPACE`.
- Use `lubridate` package to handle all date time related processing.
- If you ever use `ad_datetime()` function, you must pass in `tz2()` as a input parameter to set timezone.
- Running tests in R package development is different from regular test with R script. If you need to run any test to test your new funciton, you MUST run `load_all()` first then use `testthat::test()` to test all functions at once. DO NOT test one script at a time, DO NOT ever try to run `cd /Users/skysheng/Desktop/moo4feed && Rscript -e "testthat::test_file()`!
- New functions should be listed under [pkgdown.yaml](mdc:.github/workflows/pkgdown.yaml).
- Follow semantic versioning principles for package versioning.
- Maintain backward compatibility when possible.


## Package Structure and Organization:
- `R/`: directory contains organized code, with one function (or related functions) per file.
- `data/`: Processed datasets accessible to users (.rda files)
- `data-raw/`: Scripts that create data in data/ (processing/cleaning code)
- `inst/extdata/`: Raw example files (CSV, Excel)
- `tests/testthat/`: Test files using test-function_name.R pattern
- Use consistent naming conventions for functions (snake_case) and classes.
- Keep functions focused on single tasks; complex operations should be broken down to multiple small internal help functions.

## Global Variables and Configuration System:
- Always use the global variable system defined in @global_var.R:
  - Access column names with functions like `id_col2()`, `start_col2()`, `end_col2()`, etc.
  - Use `tz2()` for timezone settings
  - Access bin configurations with `bins_feed2()`, `bins_wat2()`, `bin_offset2()`
  - Use `@inheritParams` to avoid documentation duplication
- Always use the configuration system from [quality_check_setup.R](mdc:R/quality_check_setup.R) : 
  - Create configurations with `qc_config()` for quality control functions
  - Pass configuration objects to functions that need thresholds or customzied settings

## Documentation Standards:

### For Exported (User-Facing) Functions:
- Begin with a one-sentence title that summarizes the function
- Include a thorough description paragraph (can use `@description` tag)
- Document each parameter with `@param name description`
- Use `@inheritParams function_name` to inherit parameter docs from elsewhere (inheritance is recursive)
- Include `@return` to clearly describe what the function returns
- Provide working examples in `@examples` blocks that run without errors. Always create toy dataset to demonstrate the example code.
- Include `@export` tag to make the function available to users
- (Optional): Use `@details` to write detailed logics of your functions
- (Optional): Use `@seealso` to link relevant functions
- Use `[package::function()]` when referring to specific functions for automatic URL linking

### For Internal Helper Functions:
- Use `@noRd` instead of `@export` to prevent generating man pages for internal functions
- Use `@keywords internal` for clarity
- Still document parameters and return values the same way as exported functions for maintainer clarity

## Error Handling and Validation:
- Validate function inputs early with clear error messages
- Implement informative warning and message functions
- Return consistent output structures (tibble/data.frame, lists, etc.)

## Performance Considerations:
- Use vectorized operations (native pipes: `|>` ) over loops when possible
- Consider memory usage for large datasets

Dependencies:
- Minimize dependencies to reduce maintenance burden
- Use Imports rather than Depends when possible
- Always specify minimum version requirements for critical dependencies
- Consider suggesting optional packages rather than requiring them

## Key Conventions:
1. **DO NOT use `library()` or `require()` in any code you write**
2. **DO NOT use `source()` in any code**
3. **DO NOT hard-code file paths**; use `system.file()` instead
11. Use [qc_total_cows.R](mdc:R/qc_total_cows.R) as an example code script
```

## 🚀 Results Achieved

Using these rules, the AI agent successfully:

### ✅ Package Development
- Built complete R package structure following CRAN standards
- Implemented 25+ functions for feed data processing
- Created comprehensive test suite with >90% coverage
- Generated roxygen2 documentation for all exported functions

### ✅ Code Quality  
- Consistent tidyverse style throughout
- Proper error handling and input validation
- DRY principles with reusable helper functions
- No hard-coded values (used global variable system)

### ✅ Domain Adaptation
- Successfully generalized terminology (used "animal" instead of "cow")
- Implemented domain-specific feed analysis algorithms
- Created quality control functions for farm data
- Built configuration system for customizable thresholds

### ✅ Testing & Documentation
- Comprehensive test coverage including edge cases
- Working examples in all documentation
- Clear parameter documentation with inheritance
- Integration with pkgdown for website generation

## 💡 Key Insights

### What Worked Exceptionally Well
1. **Global Variable System**: Prevented hard-coding and made the package highly configurable
2. **Configuration Objects**: `qc_config()` approach made quality control functions flexible
3. **Testing Rules**: Emphasis on `load_all()` + `testthat::test()` prevented common R package testing mistakes
4. **Domain Terminology**: The "animal" vs "cow" rule successfully generalized the package

### Challenges Overcome
1. **Timezone Handling**: The `tz2()` requirement prevented datetime bugs in farm data
2. **Package Testing**: Clear rules about NOT testing individual files prevented development friction
3. **Documentation Inheritance**: `@inheritParams` system reduced documentation duplication significantly

### Performance Benefits
- AI agent followed consistent patterns across all functions
- Rarely needed correction on R package conventions
- Generated production-ready code with minimal manual editing
- Maintained code quality throughout development iterations

## 🔗 Related Resources

- **Repository**: [skysheng7/moo4feed](https://github.com/skysheng7/moo4feed)
- **Generalized Version**: [R Package Development Prompt](../prompts/development/r-package-dev.md)
- **Customization Guide**: [How to customize the R Package prompt](r-package-customization.md)

---

**⚡ Pro Tip**: This example shows how domain-specific rules (like terminology preferences) can be crucial for creating consistent, professional packages. The global variable system was particularly valuable for maintaining flexibility while preventing hard-coding.