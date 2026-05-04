"""The Seven — OSS Free Edition ships three of them."""
from .anvil import AmonSulAgent
from .alloy import AlloyAgent
from .shadow import ShadowAgent

ALL_AGENTS = {
    "anvil":  AmonSulAgent,
    "alloy":  AlloyAgent,
    "shadow": ShadowAgent,
}
