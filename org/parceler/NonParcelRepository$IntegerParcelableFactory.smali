.class Lorg/parceler/NonParcelRepository$IntegerParcelableFactory;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Lorg/parceler/Parcels$ParcelableFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerParcelableFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/parceler/Parcels$ParcelableFactory",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/parceler/NonParcelRepository$1;

    .prologue
    .line 220
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$IntegerParcelableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public buildParcelable(Ljava/lang/Integer;)Landroid/os/Parcelable;
    .registers 3
    .param p1, "input"    # Ljava/lang/Integer;

    .prologue
    .line 224
    new-instance v0, Lorg/parceler/NonParcelRepository$IntegerParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$IntegerParcelable;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic buildParcelable(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 220
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$IntegerParcelableFactory;->buildParcelable(Ljava/lang/Integer;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
