local wk = require("which-key")

wk.register({
	["<leader>"] = {
		s = {
			name = "+[s]earch",
			f = { "[f]iles in cwd" },
			r = { "[r]ecent files" },
			s = { "[s]tring in cwd" },
			w = { "[w]ord in cwd" },
			t = { "[t]odos" },
			q = {
				name = "+[q]uick fix",
				o = { "[o]pen list" },
				c = { "[c]lose list" },
				n = { "[n]ext" },
				p = { "[p]revious" },
			},
		},
		w = {
			name = "+[w]indow",
			v = { "[v]ertically split" },
			h = { "[h]orizontally split" },
			e = { "[e]qually split" },
			q = { "[q]uit window" },
			w = { "[w] save split" },
			m = { "[m]in/[m]ax split" },

			r = { "[r]estore workspace session" },
			s = { "[s]ave workspace session" },
		},
		f = {
			name = "+[f]ile",
			m = { "for[m]at" },
			l = { "[l]int" },
			e = { "[e]xplorer" },
			f = { "[f]ind" },
			c = { "[c]ollapse" },
			r = { "[r]efresh" },
			s = { "[s]ource configs" },
			n = { "[n]etrw" },
		},
		h = {
			name = "+[h]arpoon",
			m = { "[h]arpoon open telescope" },
			a = { "[a]dd file" },
			h = { "quick [m]enu" },
			u = { "select 1" },
			i = { "select 2" },
			o = { "select 3" },
			p = { "select 4" },
		},
		g = {
			name = "+[g]it hunks",
			s = { "[s]tage hunk" },
			r = { "[r]eset hunk" },
			S = { "[S]tage buffer" },
			R = { "[R]eset buffer" },
			u = { "[u]ndo stage hunk" },
			p = { "[p]review hunk" },
			b = { "[b]lame" },
			d = { "[d]iff" },
			D = { "[D]iff ~" },
		},
		c = {
			name = "+[c]ode",
			R = { "[R]ename smart" },
			r = { "lsp [r]eferences" },
			D = { "[D]eclaration" },
			d = { "[d]efinitions" },
			i = { "[i]mplementations" },
			t = { "[t]ype defintions" },
			a = { "[a]ctions" },
			b = {
				name = "[b]uffer",
				d = { "[d]iagnostics" },
			},
			l = {
				name = "[l]ine",
				d = { "[d]iagnostics" },
			},
			p = { "Ls[p] restart" },
		},
		u = {
			name = "[u]ndotree",
		},
		t = {
			name = "[t]rouble",
		},
	},
	v = {
		["<leader>"] = {
			h = {
				s = { "[s]tage hunk" },
				r = { "[r]eset hunk" },
			},
		},
		J = { "[J] move line down" },
		K = { "[K] move line up" },
	},
})

--comment
--cmp mapping nvim-cmp
--window resizing
--tmux navigation
--
