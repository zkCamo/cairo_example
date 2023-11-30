// Контракт для хранения и передачи токенов

// Переменные
struct Token {
  // Идентификатор токена
  id: felt;
  // Количество токенов
  amount: felt;
}

// Функции

// Создает новый токен
@external
func create(id: felt, amount: felt) -> Token {
  // Создает новый токен
  let token = Token(id: id, amount: amount);
  // Возвращает токен
  return token;
}

// Переводит токены от одного владельца к другому
@external
func transfer(from: felt, to: felt, amount: felt) {
  // Проверяет, что отправитель имеет достаточно токенов
  assert(balance(from) >= amount);
  // Уменьшает количество токенов у отправителя
  balance(from) -= amount;
  // Увеличивает количество токенов у получателя
  balance(to) += amount;
}
