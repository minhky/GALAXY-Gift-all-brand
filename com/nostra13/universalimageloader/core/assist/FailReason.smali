.class public final enum Lcom/nostra13/universalimageloader/core/assist/FailReason;
.super Ljava/lang/Enum;
.source "FailReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nostra13/universalimageloader/core/assist/FailReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason;

.field public static final enum IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason;

.field public static final enum NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason;

.field public static final enum OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason;

.field public static final enum UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason;

.field public static final enum UNSUPPORTED_URI_SCHEME:Lcom/nostra13/universalimageloader/core/assist/FailReason;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    const-string v1, "OUT_OF_MEMORY"

    invoke-direct {v0, v1, v3}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    const-string v1, "UNSUPPORTED_URI_SCHEME"

    invoke-direct {v0, v1, v4}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->UNSUPPORTED_URI_SCHEME:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    const-string v1, "NETWORK_DENIED"

    invoke-direct {v0, v1, v5}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/assist/FailReason;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason;->UNSUPPORTED_URI_SCHEME:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->ENUM$VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/FailReason;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    return-object v0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/FailReason;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->ENUM$VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method