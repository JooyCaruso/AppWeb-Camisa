# 👕 Minha Coleção de Camisas — PWA

App para gerenciar sua coleção de camisas de futebol com reconhecimento por IA.

---

## ⚡ Como publicar (Netlify — grátis, 5 minutos)

### Passo 1 — Obter chave da API Anthropic
1. Acesse https://console.anthropic.com/
2. Vá em **API Keys** → **Create Key**
3. Copie a chave (começa com `sk-ant-...`)

### Passo 2 — Configurar a chave no app
Abra o arquivo `index.html` e procure esta linha:

```js
const ANTHROPIC_API_KEY = 'SUA_CHAVE_API_AQUI';
```

Substitua `SUA_CHAVE_API_AQUI` pela sua chave real.

### Passo 3 — Publicar no Netlify
1. Acesse https://netlify.com e crie uma conta gratuita
2. Na tela inicial, arraste a **pasta inteira** (`camisas-colecao`) para a área de deploy
3. Aguarde 30 segundos — o Netlify gera uma URL tipo `https://random-name.netlify.app`
4. Acesse essa URL no celular!

---

## 📱 Instalar como app no celular

**Android (Chrome):**
- Acesse a URL no Chrome
- Toque nos 3 pontos → "Instalar app" ou "Adicionar à tela inicial"

**iPhone (Safari):**
- Acesse a URL no Safari
- Toque em Compartilhar (ícone de caixa com seta)
- Selecione "Adicionar à Tela de Início"

---

## 📁 Arquivos do projeto

```
camisas-colecao/
├── index.html      ← App completo (edite a chave API aqui)
├── manifest.json   ← Configuração PWA (ícone, nome, cores)
├── sw.js           ← Service worker (funciona offline)
└── README.md       ← Este arquivo
```

> **Ícones:** Para adicionar ícones personalizados, coloque arquivos
> `icon-192.png` e `icon-512.png` na pasta. Sem eles o app funciona,
> mas usará o ícone padrão do navegador.

---

## 🔒 Segurança da chave API

A chave fica no código HTML (lado cliente). Para uso pessoal isso é aceitável.
Se quiser mais segurança, use o Netlify Functions como proxy — me peça ajuda!
