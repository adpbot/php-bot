<?php

namespace App\Models;

class Deal
{
    public function __construct(
        private string $id,
        private string $idBuyer,
        private string $usernameBuyer,
        private string $idSeller,
        private string $usernameSeller,
        private string|null $amount,
        private string|null $currency,
        private string|null $resultAmount,
        private string|null $terms,
        private string|null $cryptoWallet,
        private string $startTime
    )
    {
    }

    public function id(): string
    {
        return $this->id;
    }

    public function idBuyer(): string
    {
        return $this->idBuyer;
    }

    public function idSeller(): string
    {
        return $this->idSeller;
    }

    public function amount(): string
    {
        return $this->amount;
    }

    public function terms(): string
    {
        return $this->terms;
    }

    public function startTime(): string
    {
        return $this->startTime;
    }
}