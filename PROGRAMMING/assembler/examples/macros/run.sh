# generate macro from alu.mcode (without alignment)
mcode_generate_macro alu.mcode > alu.macro
# expand instantiate_macro.mcode to generate instantiate.expanded.mcode
expand_macros.sh "-I ./" instantiate_macro.mcode instantiate.expanded.mcode
