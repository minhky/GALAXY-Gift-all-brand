.class public final Lcom/google/zxing/client/result/URLTOResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "URLTOResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x6

    .line 32
    invoke-static {p1}, Lcom/google/zxing/client/result/URLTOResultParser;->c(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string/jumbo v2, "urlto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "URLTO:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 42
    :cond_18
    :goto_18
    return-object v0

    .line 36
    :cond_19
    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 37
    if-ltz v2, :cond_18

    .line 40
    if-gt v2, v3, :cond_30

    .line 41
    :goto_23
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    new-instance v1, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_18

    .line 40
    :cond_30
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public synthetic b(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/URLTOResultParser;->a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v0

    return-object v0
.end method
