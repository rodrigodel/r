# Total de Passageiros por linha

soma_por_linha <- demanda_2021 %>%
  group_by(linha) %>%
  summarize(soma_total = sum(total),
            media = soma_total / 12)