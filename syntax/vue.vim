" Vim syntax file

if exists("b:current_syntax")
  finish
endif

syntax include @HTML syntax/html.vim
unlet b:current_syntax
syntax region template keepend start=/<template>/ end="</template>" contains=@HTML fold

syntax include @JADE syntax/jade.vim
unlet b:current_syntax
syntax region template keepend start=/<template lang="jade">/ end="</template>" contains=@JADE fold

syntax include @JS syntax/javascript.vim
unlet b:current_syntax
syntax region script keepend start=/<script\( lang="[a-zA-Z]\+"\)\?>/ end="</script>" contains=@JS fold

syntax include @CSS syntax/css.vim
unlet b:current_syntax
syntax region style keepend start=/<style>/ end="</style>" contains=@CSS fold

syntax include @STYLUS syntax/stylus.vim
unlet b:current_syntax
syntax region style keepend start=/<style lang="stylus">/ end="</style>" contains=@STYLUS fold

let b:current_syntax = "vue"
