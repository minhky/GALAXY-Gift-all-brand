.class Lcom/samsung/privilege/util/zxing/MECARDContactEncoder$1;
.super Ljava/lang/Object;
.source "MECARDContactEncoder.java"

# interfaces
.implements Lcom/samsung/privilege/util/zxing/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/zxing/MECARDContactEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 36
    # getter for: Lcom/samsung/privilege/util/zxing/MECARDContactEncoder;->NEWLINE:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/samsung/privilege/util/zxing/MECARDContactEncoder;->access$0()Ljava/util/regex/Pattern;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/util/zxing/MECARDContactEncoder;->RESERVED_MECARD_CHARS:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/samsung/privilege/util/zxing/MECARDContactEncoder;->access$1()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\\\\$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
