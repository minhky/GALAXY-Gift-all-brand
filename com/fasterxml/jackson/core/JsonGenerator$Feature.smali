.class public final enum Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
.super Ljava/lang/Enum;
.source "JsonGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string/jumbo v1, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v1, v4, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 71
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string/jumbo v1, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v1, v3, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 82
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string/jumbo v1, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 96
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string/jumbo v1, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v1, v6, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 113
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string/jumbo v1, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v0, v1, v7, v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 125
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string/jumbo v1, "WRITE_BIGDECIMAL_AS_PLAIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 138
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string/jumbo v1, "FLUSH_PASSED_TO_STREAM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 149
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string/jumbo v1, "ESCAPE_NON_ASCII"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 164
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string/jumbo v1, "STRICT_DUPLICATE_DETECTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    .line 188
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_defaultState:Z

    .line 189
    return-void
.end method

.method public static collectDefaults()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->values()[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_19

    aget-object v4, v2, v1

    .line 179
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 180
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    .line 178
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 183
    :cond_19
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .registers 2

    .prologue
    .line 45
    const-class v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .registers 3

    .prologue
    .line 196
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getMask()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    return v0
.end method
