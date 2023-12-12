<?php

return [
  'start' => array(
      array(
          array('text' => '💀 Мой Профиль'),
          array('text' => '👀 Поиск Пользователя')
      ),
      array(
          array('text' => '🔥 Активные Сделки'),
          array('text' => '📪 Служба Поддержки')
      )
  ),

  'goHome' => array(
      array(
          array('text' => 'Главное Меню', 'callback_data' => 'goToHome')
      )
  ),

  'createDeal' =>  array(
      array(
          array('text' => 'Создать Сделку', 'callback_data' => 'startDeal'),
          array('text' => 'Отмена', 'callback_data' => 'cancelStartDeal')
      )
  ),

  'confirmDeal' => array(
      array(
          array('text' => 'Подтвердить сделку', 'callback_data' => 'confirmAndSendToSeller'),
          array('text' => 'Отмена', 'callback_data' => 'cancelConfirmDeal')
      )
  ),

  'acceptDeal' => array(
      array(
          array('text' => 'Принять Сделку', 'callback_data' => 'acceptInvitationFromBuyer'),
          array('text' => 'Отмена', 'callback_data' => 'cancelInvitationFromBuyer')
      )
  ),

  'isPaidMenu' => array(
      array(
          array('text' => 'Оплачено', 'callback_data' => 'paidToEscrowByBuyer'),
          array('text' => 'Отмена', 'callback_data' => 'buyerRefusedToPay')
      )
  ),

  'admin' => array(
      array(
          array('text' => 'Взнос получен', 'callback_data' => 'adminReceivedMoney'),
          array('text' => 'Написать в сделку', 'callback_data' => 'sendMessageToDeal')
      ),
      array(
          array('text' => 'Написать в бот ', 'callback_data' => 'sendMessageToBot'),
          array('text' => 'Закрыть сделку', 'callback_data' => 'dealIsResolved')
      )
  ),

  'buyerDealMenu' => array(
      array(
          array('text' => 'Успех', 'callback_data' => 'completeByBuyer'),
          array('text' => 'Открыть спор', 'callback_data' => 'openDisputeByBuyer')
      )
  ),

  'sellerDealMenu' => array(
      array(
          array('text' => 'Выполнено', 'callback_data' => 'completeBySeller'),
          array('text' => 'Открыть спор', 'callback_data' => 'openDisputeBySeller')
      )
  ),


];
