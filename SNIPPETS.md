# Custom Snippets

This directory contains custom snippet definitions that are automatically loaded by `nvim-snippets`.

## How to Add New Snippets

1. Create or edit a `.json` file in the `snippets/` directory named after the filetype (e.g., `typescript.json`, `javascript.json`, `lua.json`)
2. Use the VS Code snippet format:

```json
{
  "snippet_name": {
    "prefix": "trigger",
    "body": ["line 1", "line 2 with $1 placeholder", "$2"],
    "description": "What this snippet does"
  }
}
```

## Placeholders

- `$1`, `$2`, etc. - Tab stops (use Tab to jump between them)
- `$0` - Final cursor position
- `${1:default}` - Placeholder with default text

## Current Snippets

### TypeScript/JavaScript
- `jaa` - Arrow function: `($1) => $2`
- `jaaa` - Async arrow function: `async ($1) => $2`
- `cl` - Console log: `console.log($1)`
- `jf` - Function declaration: `function $1($2) { $3 }`
- `ji` - TypeScript interface (TypeScript only)

## Usage

1. Type the prefix (e.g., `jaa`)
2. See it appear in completion menu
3. Select with `Ctrl+y` (or your completion key)
4. Use `Tab` to jump between placeholders