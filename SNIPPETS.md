# Custom Snippets

This directory contains custom snippet definitions that are automatically loaded by `nvim-snippets`.

## Snippet Inheritance Structure

The snippets follow a **true inheritance** pattern using `extended_filetypes` configuration:

```
javascript.json (base JS snippets)
├── typescript.json (only TS-specific snippets) → inherits from javascript
├── javascriptreact.json (only React snippets) → inherits from javascript  
└── typescriptreact.json (only TSX-specific snippets) → inherits from javascript + typescript
```

Each file only contains **new** snippets specific to that filetype. Base snippets are automatically inherited.

## How to Add New Snippets

1. Create or edit a `.json` file in the `snippets/` directory named after the **exact** filetype
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

## File Type Mapping

- `.js` files → `javascript.json`
- `.ts` files → `typescript.json` 
- `.jsx` files → `javascriptreact.json`
- `.tsx` files → `typescriptreact.json`

## Placeholders

- `$1`, `$2`, etc. - Tab stops (use Tab to jump between them)
- `$0` - Final cursor position
- `${1:default}` - Placeholder with default text

## Current Snippets

### Base JavaScript (all files inherit these)
- `jaa` - Arrow function: `($1) => $2`
- `jaaa` - Async arrow function: `async ($1) => $2`  
- `cl` - Console log: `console.log($1)`
- `jf` - Function declaration: `function $1($2) { $3 }`
- `jc` - Const declaration: `const $1 = $2`

### TypeScript Additions (.ts, .tsx files)
- `ji` - Interface: `interface $1 { $2 }`
- `jt` - Type alias: `type $1 = $2`

### React Additions (.jsx, .tsx files)
- `jrc` - React component: `function $1() { return (<div>$2</div>) }`
- `jrce` - React component (exported)
- `jrct` - Typed React component (TSX only)

## Usage

1. Type the prefix (e.g., `jaa`)
2. See it appear in completion menu
3. Select with `Ctrl+y` (or your completion key)
4. Use `Tab` to jump between placeholders