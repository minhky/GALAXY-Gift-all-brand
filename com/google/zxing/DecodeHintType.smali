.class public final enum Lcom/google/zxing/DecodeHintType;
.super Ljava/lang/Enum;
.source "DecodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/DecodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/DecodeHintType;

.field public static final enum b:Lcom/google/zxing/DecodeHintType;

.field public static final enum c:Lcom/google/zxing/DecodeHintType;

.field public static final enum d:Lcom/google/zxing/DecodeHintType;

.field public static final enum e:Lcom/google/zxing/DecodeHintType;

.field public static final enum f:Lcom/google/zxing/DecodeHintType;

.field public static final enum g:Lcom/google/zxing/DecodeHintType;

.field public static final enum h:Lcom/google/zxing/DecodeHintType;

.field public static final enum i:Lcom/google/zxing/DecodeHintType;

.field public static final enum j:Lcom/google/zxing/DecodeHintType;

.field public static final enum k:Lcom/google/zxing/DecodeHintType;

.field private static final synthetic m:[Lcom/google/zxing/DecodeHintType;


# instance fields
.field private final l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "OTHER"

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->a:Lcom/google/zxing/DecodeHintType;

    .line 41
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "PURE_BARCODE"

    const-class v2, Ljava/lang/Void;

    invoke-direct {v0, v1, v5, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->b:Lcom/google/zxing/DecodeHintType;

    .line 47
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "POSSIBLE_FORMATS"

    const-class v2, Ljava/util/List;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->c:Lcom/google/zxing/DecodeHintType;

    .line 53
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "TRY_HARDER"

    const-class v2, Ljava/lang/Void;

    invoke-direct {v0, v1, v7, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->d:Lcom/google/zxing/DecodeHintType;

    .line 58
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "CHARACTER_SET"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v8, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->e:Lcom/google/zxing/DecodeHintType;

    .line 63
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "ALLOWED_LENGTHS"

    const/4 v2, 0x5

    const-class v3, [I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->f:Lcom/google/zxing/DecodeHintType;

    .line 69
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "ASSUME_CODE_39_CHECK_DIGIT"

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->g:Lcom/google/zxing/DecodeHintType;

    .line 76
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "ASSUME_GS1"

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->h:Lcom/google/zxing/DecodeHintType;

    .line 83
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "RETURN_CODABAR_START_END"

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Void;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->i:Lcom/google/zxing/DecodeHintType;

    .line 89
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "NEED_RESULT_POINT_CALLBACK"

    const/16 v2, 0x9

    const-class v3, Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->j:Lcom/google/zxing/DecodeHintType;

    .line 99
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v1, "ALLOWED_EAN_EXTENSIONS"

    const/16 v2, 0xa

    const-class v3, [I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->k:Lcom/google/zxing/DecodeHintType;

    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/zxing/DecodeHintType;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->a:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/DecodeHintType;->b:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/DecodeHintType;->c:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/DecodeHintType;->d:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/zxing/DecodeHintType;->e:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/DecodeHintType;->f:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/DecodeHintType;->g:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/DecodeHintType;->h:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/zxing/DecodeHintType;->i:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/zxing/DecodeHintType;->j:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/zxing/DecodeHintType;->k:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/DecodeHintType;->m:[Lcom/google/zxing/DecodeHintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput-object p3, p0, Lcom/google/zxing/DecodeHintType;->l:Ljava/lang/Class;

    .line 116
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/DecodeHintType;
    .registers 2

    .prologue
    .line 30
    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/DecodeHintType;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/DecodeHintType;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/zxing/DecodeHintType;->m:[Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0}, [Lcom/google/zxing/DecodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/DecodeHintType;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/zxing/DecodeHintType;->l:Ljava/lang/Class;

    return-object v0
.end method
