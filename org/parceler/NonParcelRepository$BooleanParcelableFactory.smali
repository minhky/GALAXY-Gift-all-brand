.class Lorg/parceler/NonParcelRepository$BooleanParcelableFactory;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Lorg/parceler/Parcels$ParcelableFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/parceler/Parcels$ParcelableFactory",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$BooleanParcelableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 96
    new-instance v0, Lorg/parceler/NonParcelRepository$BooleanParcelable;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$BooleanParcelable;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 92
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$BooleanParcelableFactory;->a(Ljava/lang/Boolean;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
