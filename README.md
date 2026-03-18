# leoho0722 Homebrew Tap

This is a custom Homebrew tap for @leoho0722's tools.

## Usage

```bash
# Add the tap
brew tap leoho0722/tap

# Install tools
brew install sf-symbols
brew install agentic
brew install --cask agentic-usage
```

## Available Formulas

### sf-symbols

A Swift-based command-line utility that generates type-safe Swift enumerations for SF Symbols.

```bash
# Install
brew install sf-symbols

# Usage
sf-symbols generate ~/Desktop --name MySymbols
sf-symbols version
```

### agentic

CLI tool to monitor AI coding assistant usage (GitHub Copilot, Claude Code, OpenAI Codex, Google Antigravity).

```bash
# Install
brew install agentic

# Usage
agentic usage
agentic login --client-id <YOUR_CLIENT_ID>
agentic update
```

## Available Casks

### agentic-usage

macOS menu bar app to monitor AI coding assistant usage.

```bash
# Install
brew install --cask agentic-usage
```

## Links

- [SFSymbolsGenerator Repository](https://github.com/leoho0722/SFSymbolsGenerator)
- [AgenticUsage Repository](https://github.com/leoho0722/agentic-coding-usage-app)
