.class final Lcom/google/gson/internal/bind/TypeAdapters$19;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Ljava/net/URI;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_d

    .line 464
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 469
    :cond_c
    :goto_c
    return-object v0

    .line 468
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 469
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_1f} :catch_20

    goto :goto_c

    .line 470
    :catch_20
    move-exception v0

    .line 471
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 460
    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$19;->a(Lcom/google/gson/stream/JsonWriter;Ljava/net/URI;)V

    return-void
.end method

.method public a(Lcom/google/gson/stream/JsonWriter;Ljava/net/URI;)V
    .registers 4

    .prologue
    .line 476
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 477
    return-void

    .line 476
    :cond_7
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public synthetic b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$19;->a(Lcom/google/gson/stream/JsonReader;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
