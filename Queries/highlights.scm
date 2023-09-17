;; Primitives
(comment) @comment
(nat) @value.number
(unit) @identifier.core
(literal_char) @value.symbol
(literal_text) @string
(literal_boolean) @value.boolean

;; Keywords
[
  (kw_forall)
  (unique_kw)
  (structural_kw)
  (type_kw)
  (kw_equals)
  (do)
  (ability)
  (where)
] @keyword

(kw_let) @keyword.construct
(type_kw) @keyword.construct
(unique) @keyword.modifier
(structural) @keyword.modifier
("use") @keyword


[
  (type_constructor)
] @keyword.construct

[
  (operator)
  (pipe)
  (arrow_symbol)
  (">")
  (or)
  (and)
  (bang)
] @operator

[
  "if"
  "else"
  "then"
  (match)
  (with)
  (cases)
] @keyword.condition

(blank_pattern) @identifer.global

;; Types
(record_field name: (wordy_id) @identifier.property type: (wordy_id) @identifier.type)
(type_constructor (type_name (wordy_id) @identifier.type))
(ability_declaration type_name: (wordy_id) @identifier.type type_arg: (wordy_id) @identifier.argument)
(effect (wordy_id) @identifier.type.protocol) ;; NOTE: an effect is just like a type, but in signature we special case it

;; Namespaces
(path) @identifier
(namespace) @identifier

;; Terms
(type_signature term_name: (path)? @identifier term_name: (wordy_id) @identifier.variable)
(type_signature (wordy_id) @identifier.type)
(type_signature (delayed (wordy_id)) @identifier.type)

(term_definition param: (wordy_id) @identifier.argument)

(function_application function_name: (path)? function_name: (wordy_id) @identifier.function)

;; Punctuation
[
  (type_signature_colon)
  ":"
] @definition

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @bracket

(test_watch_expression (wordy_id) @keyword.directive)