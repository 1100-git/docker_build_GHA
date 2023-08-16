module.exports = {
    // Інші налаштування ESLint
    plugins: ['security'],
    rules: {
      'security/detect-buffer-noassert': 'error',
      // Додайте інші правила для виявлення проблем безпеки
    }
  };