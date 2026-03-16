# 👕 Camisas BR

30 anos de camisas do futebol brasileiro na palma da sua mão.

---

## ⚡ PASSO 1 — Configurar o banco de dados no Supabase

1. Acesse https://supabase.com e entre no seu projeto
2. No menu lateral, clique em **SQL Editor**
3. Clique em **New query**
4. Copie TODO o conteúdo do arquivo `setup.sql`
5. Cole no editor e clique em **Run**
6. Deve aparecer "Success" — as tabelas e permissões foram criadas

---

## ⚡ PASSO 2 — Publicar no Netlify

1. Acesse https://netlify.com
2. Vá em **Sites** > arraste a **pasta `camisas-app`** (os arquivos soltos, não o zip)
3. Aguarde o deploy
4. Acesse a URL gerada no celular

---

## 📱 Instalar como app

**Android (Chrome):** Menu ⋮ → "Instalar app"  
**iPhone (Safari):** Compartilhar → "Adicionar à Tela de Início"

---

## 📁 Arquivos

```
camisas-app/
├── index.html    ← App completo
├── manifest.json ← Configuração PWA
├── sw.js         ← Service worker (offline)
├── setup.sql     ← Execute no Supabase SQL Editor
└── README.md     ← Este arquivo
```
